//macro nutrients
import 'package:foods/features/repository/data/list_of_nutrients.dart';
import 'package:foods/features/repository/models/food_model.dart';
import 'package:foods/features/repository/models/nutrient.dart';

List<Nutrient> macroNutrients({required Food food}) {
  return allNutrients(food: food).getRange(0, 11).toList();
}

//vitamins
List<Nutrient> vitamins({required Food food}) {
  return allNutrients(food: food).getRange(11, 34).toList();
}

//minerals
List<Nutrient> minerals({required Food food}) {
  return allNutrients(food: food).getRange(34, 43).toList();
}

//stimulants
List<Nutrient> stimulants({required Food food}) {
  return allNutrients(food: food).getRange(43, 46).toList();
}

//individual fatty acids
List<Nutrient> fattyAcids({required Food food}) {
  return allNutrients(food: food).getRange(46, 65).toList();
}
