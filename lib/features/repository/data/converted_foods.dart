import 'package:foods/features/repository/data/foods.dart';
import 'package:foods/features/repository/models/food_model.dart';

List<Food> foods = jsonFoods.map((e) => Food.fromJson(e)).toList();
