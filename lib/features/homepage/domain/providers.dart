import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/repository/data/converted_foods.dart';
import 'package:foods/features/repository/data/weight.dart';
import 'package:foods/features/repository/models/food_model.dart';

final searchTextEditingProvider =
    Provider<TextEditingController>((ref) => TextEditingController());

final searchedTextProvider = StateProvider<String>((ref) {
  return '';
});

final foodsProvider = StateProvider<List<Food>>((ref) {
  final searchText = ref.watch(searchedTextProvider.state);
  return foods
      .where((element) =>
          element.category
              .toLowerCase()
              .contains(searchText.state.toLowerCase()) ||
          element.description
              .toLowerCase()
              .contains(searchText.state.toLowerCase()))
      .toList();
});

final searchWeightControllerProvider =
    Provider.autoDispose<TextEditingController>(
        (ref) => TextEditingController());

final searchWeightProvider = StateProvider.autoDispose<double>((ref) => 100);

final selectedWeightProvider =
    StateProvider.autoDispose<Weight>((ref) => Weight.g);

final selectedIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

final mealsProvider = StateProvider<List<Food>>((ref) => []);
