import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/repository/models/food_model.dart';

import '../../../repository/data/weight.dart';

Food calculateFood(WidgetRef ref, Food food) {
  final searchWeight = ref.read(searchWeightProvider);
  final selectedWeight = ref.read(selectedWeightProvider);

  double multiplyBy = 1;

  if (selectedWeight == Weight.g) {
    multiplyBy = 0.01 * searchWeight;
  } else if (selectedWeight == Weight.oz) {
    multiplyBy = 0.01 * searchWeight * 28.35;
  } else {
    multiplyBy = 0.01 * searchWeight * 453.6;
  }

  food = food.copyWith(weight: multiplyBy * 100);
  food = food.multiplyByWeight();
  return food;
}
