import 'package:foods/features/repository/data/weight.dart';

double convertWeight(double grams, Weight weight) {
  if (weight == Weight.oz) {
    grams *= 28.35;
  } else if (weight == Weight.lbs) {
    grams *= 453.6;
  }
  return grams;
}
