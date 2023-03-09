import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/toast/success.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:foods/features/repository/models/food_model.dart';

void addToMeal(WidgetRef ref, Food food) {
  final meals = ref.read(mealsProvider.state);
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

  meals.update((state) {
    state.add(food);
    print(state.last.energy);
    return state;
  });
  successToast('Added to Meal');
}
