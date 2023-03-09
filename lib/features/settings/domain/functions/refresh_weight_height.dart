import 'package:foods/features/homepage/domain/providers.dart';
import 'package:foods/features/settings/domain/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void refreshHeightWeight(WidgetRef ref) {
  ref.invalidate(isAmericanModeProvider);
  ref.invalidate(weightProvider);
  ref.invalidate(heightProvider);
}
