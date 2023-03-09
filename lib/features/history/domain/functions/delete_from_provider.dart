import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/homepage/domain/providers.dart';

void deleteMeal(
    int index, WidgetRef ref, void Function(void Function()) setState) {
  ref.read(mealsProvider.state).update((state) {
    state.removeAt(index);
    return state;
  });
  setState((() {}));
}
