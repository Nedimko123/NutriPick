import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/toast/success.dart';
import 'package:foods/features/history/domain/providers.dart';
import 'package:foods/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> deleteTransaction(int index, WidgetRef ref) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesDietMemoryKey) ?? '[]';
  List<dynamic> string = jsonDecode(transactions);
  final List<Food> dietList = string.map((e) => Food.fromJson(e)).toList();

  dietList.removeAt(index);

  await sharedPreferences
      .setString(sharedPreferencesDietMemoryKey, jsonEncode(dietList))
      .whenComplete(() {
    return ref.refresh(transactionHistoryProvider);
  });
}
