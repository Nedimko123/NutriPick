import 'package:foods/features/settings/data/const/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> switchNutrientPercentage(bool value) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sharedPreferences.setBool(sharedPreferencesShowPercentageKey, value);
}
