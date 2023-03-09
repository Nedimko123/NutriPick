import 'package:foods/features/repository/models/food_model.dart';
import 'package:share_plus/share_plus.dart';

void shareMeal(List<Food> foods) {
  String stringToSend = 'My meal:\n';
  for (Food food in foods) {
    stringToSend += '${food.weight}g ${food.description}\n';
  }
  Share.share(stringToSend);
}
