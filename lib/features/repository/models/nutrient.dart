import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient.freezed.dart';
part 'nutrient.g.dart';

@freezed
class Nutrient with _$Nutrient {
  const factory Nutrient({
    required double nutrientValue,
    required String nutrientName,
    required String nutrientDescription,
    required String nutrientMeasurementType,
    double? nutrientLimit,
    bool? isReverseLimit,
  }) = _Nutrient;

  factory Nutrient.fromJson(Map<String, dynamic> json) =>
      _$NutrientFromJson(json);
}
