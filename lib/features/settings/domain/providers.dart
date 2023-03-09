import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foods/features/settings/domain/functions/get_theme_mode.dart';
import 'package:foods/features/settings/domain/functions/show_nutrient_percentage.dart';

final isDarkModeProvider = FutureProvider<bool>((ref) => getThemeMode());
final showNutrientPercentageProvider =
    FutureProvider<bool>((ref) => showNutrientPercentage());
