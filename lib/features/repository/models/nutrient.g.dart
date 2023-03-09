// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Nutrient _$$_NutrientFromJson(Map<String, dynamic> json) => _$_Nutrient(
      nutrientValue: (json['nutrientValue'] as num).toDouble(),
      nutrientName: json['nutrientName'] as String,
      nutrientDescription: json['nutrientDescription'] as String,
      nutrientMeasurementType: json['nutrientMeasurementType'] as String,
      nutrientLimit: (json['nutrientLimit'] as num?)?.toDouble(),
      isReverseLimit: json['isReverseLimit'] as bool?,
    );

Map<String, dynamic> _$$_NutrientToJson(_$_Nutrient instance) =>
    <String, dynamic>{
      'nutrientValue': instance.nutrientValue,
      'nutrientName': instance.nutrientName,
      'nutrientDescription': instance.nutrientDescription,
      'nutrientMeasurementType': instance.nutrientMeasurementType,
      'nutrientLimit': instance.nutrientLimit,
      'isReverseLimit': instance.isReverseLimit,
    };
