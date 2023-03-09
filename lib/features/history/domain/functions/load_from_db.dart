import 'dart:convert';

import 'package:foods/features/homepage/data/const/shared_preferences_keys.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<List<Food>> loadData() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final String transactions =
      sharedPreferences.getString(sharedPreferencesDietMemoryKey) ?? '[]';
  List<dynamic> transactionList = jsonDecode(transactions);
  return transactionList.map((e) => Food.fromJson(e)).toList();
}
