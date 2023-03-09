import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/common/toast/success.dart';
import 'package:foods/features/homepage/domain/functions/calculate_food.dart';
import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/repository/models/food_model.dart';

void addToMeal(WidgetRef ref, Food food) {
  final meals = ref.read(mealsProvider.state);

  food = calculateFood(ref, food);

  meals.update((state) {
    state.add(food);
    print(state.last.energy);
    return state;
  });
  successToast('Added to Meal');
}
