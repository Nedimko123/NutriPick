import 'package:foods/features/repository/models/food_model.dart';
import 'package:share_plus/share_plus.dart';

void shareDiet(List<Food> foods) {
  String stringToSend = 'Foods in my diet:\n';
  for (Food food in foods) {
    stringToSend += '${food.weight}g ${food.description}\n';
  }
  Share.share(stringToSend);
}
