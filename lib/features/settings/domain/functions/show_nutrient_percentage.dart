import 'package:foods/features/settings/data/const/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> showNutrientPercentage() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final bool currentThemeMode =
      sharedPreferences.getBool(sharedPreferencesShowPercentageKey) ?? true;
  return currentThemeMode;
}
