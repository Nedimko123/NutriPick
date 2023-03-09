import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/toast/success.dart';
import 'package:foods/features/history/domain/providers.dart';
import 'package:foods/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:foods/features/homepage/domain/functions/calculate_food.dart';
import 'package:foods/features/homepage/domain/functions/reset_data.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveData(WidgetRef ref, Food food) async {
  food = calculateFood(ref, food);
  await SharedPreferences.getInstance()
      .then((SharedPreferences sharedPreferences) {
    final String transactions =
        sharedPreferences.getString(sharedPreferencesDietMemoryKey) ?? '[]';
    List<dynamic> transactionList = jsonDecode(transactions);
    transactionList.add(food);
    sharedPreferences.setString(
        sharedPreferencesDietMemoryKey, jsonEncode(transactionList));
  }).whenComplete(() {
    resetData(ref);
    successToast('Food added');
    return ref.refresh(transactionHistoryProvider);
  });
}
