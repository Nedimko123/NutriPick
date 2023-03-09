// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Nutrient _$NutrientFromJson(Map<String, dynamic> json) {
  return _Nutrient.fromJson(json);
}

/// @nodoc
mixin _$Nutrient {
  double get nutrientValue => throw _privateConstructorUsedError;
  String get nutrientName => throw _privateConstructorUsedError;
  String get nutrientDescription => throw _privateConstructorUsedError;
  String get nutrientMeasurementType => throw _privateConstructorUsedError;
  double? get nutrientLimit => throw _privateConstructorUsedError;
  bool? get isReverseLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NutrientCopyWith<Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientCopyWith<$Res> {
  factory $NutrientCopyWith(Nutrient value, $Res Function(Nutrient) then) =
      _$NutrientCopyWithImpl<$Res, Nutrient>;
  @useResult
  $Res call(
      {double nutrientValue,
      String nutrientName,
      String nutrientDescription,
      String nutrientMeasurementType,
      double? nutrientLimit,
      bool? isReverseLimit});
}

/// @nodoc
class _$NutrientCopyWithImpl<$Res, $Val extends Nutrient>
    implements $NutrientCopyWith<$Res> {
  _$NutrientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrientValue = null,
    Object? nutrientName = null,
    Object? nutrientDescription = null,
    Object? nutrientMeasurementType = null,
    Object? nutrientLimit = freezed,
    Object? isReverseLimit = freezed,
  }) {
    return _then(_value.copyWith(
      nutrientValue: null == nutrientValue
          ? _value.nutrientValue
          : nutrientValue // ignore: cast_nullable_to_non_nullable
              as double,
      nutrientName: null == nutrientName
          ? _value.nutrientName
          : nutrientName // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientDescription: null == nutrientDescription
          ? _value.nutrientDescription
          : nutrientDescription // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientMeasurementType: null == nutrientMeasurementType
          ? _value.nutrientMeasurementType
          : nutrientMeasurementType // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientLimit: freezed == nutrientLimit
          ? _value.nutrientLimit
          : nutrientLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      isReverseLimit: freezed == isReverseLimit
          ? _value.isReverseLimit
          : isReverseLimit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NutrientCopyWith<$Res> implements $NutrientCopyWith<$Res> {
  factory _$$_NutrientCopyWith(
          _$_Nutrient value, $Res Function(_$_Nutrient) then) =
      __$$_NutrientCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double nutrientValue,
      String nutrientName,
      String nutrientDescription,
      String nutrientMeasurementType,
      double? nutrientLimit,
      bool? isReverseLimit});
}

/// @nodoc
class __$$_NutrientCopyWithImpl<$Res>
    extends _$NutrientCopyWithImpl<$Res, _$_Nutrient>
    implements _$$_NutrientCopyWith<$Res> {
  __$$_NutrientCopyWithImpl(
      _$_Nutrient _value, $Res Function(_$_Nutrient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrientValue = null,
    Object? nutrientName = null,
    Object? nutrientDescription = null,
    Object? nutrientMeasurementType = null,
    Object? nutrientLimit = freezed,
    Object? isReverseLimit = freezed,
  }) {
    return _then(_$_Nutrient(
      nutrientValue: null == nutrientValue
          ? _value.nutrientValue
          : nutrientValue // ignore: cast_nullable_to_non_nullable
              as double,
      nutrientName: null == nutrientName
          ? _value.nutrientName
          : nutrientName // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientDescription: null == nutrientDescription
          ? _value.nutrientDescription
          : nutrientDescription // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientMeasurementType: null == nutrientMeasurementType
          ? _value.nutrientMeasurementType
          : nutrientMeasurementType // ignore: cast_nullable_to_non_nullable
              as String,
      nutrientLimit: freezed == nutrientLimit
          ? _value.nutrientLimit
          : nutrientLimit // ignore: cast_nullable_to_non_nullable
              as double?,
      isReverseLimit: freezed == isReverseLimit
          ? _value.isReverseLimit
          : isReverseLimit // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Nutrient implements _Nutrient {
  const _$_Nutrient(
      {required this.nutrientValue,
      required this.nutrientName,
      required this.nutrientDescription,
      required this.nutrientMeasurementType,
      this.nutrientLimit,
      this.isReverseLimit});

  factory _$_Nutrient.fromJson(Map<String, dynamic> json) =>
      _$$_NutrientFromJson(json);

  @override
  final double nutrientValue;
  @override
  final String nutrientName;
  @override
  final String nutrientDescription;
  @override
  final String nutrientMeasurementType;
  @override
  final double? nutrientLimit;
  @override
  final bool? isReverseLimit;

  @override
  String toString() {
    return 'Nutrient(nutrientValue: $nutrientValue, nutrientName: $nutrientName, nutrientDescription: $nutrientDescription, nutrientMeasurementType: $nutrientMeasurementType, nutrientLimit: $nutrientLimit, isReverseLimit: $isReverseLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Nutrient &&
            (identical(other.nutrientValue, nutrientValue) ||
                other.nutrientValue == nutrientValue) &&
            (identical(other.nutrientName, nutrientName) ||
                other.nutrientName == nutrientName) &&
            (identical(other.nutrientDescription, nutrientDescription) ||
                other.nutrientDescription == nutrientDescription) &&
            (identical(
                    other.nutrientMeasurementType, nutrientMeasurementType) ||
                other.nutrientMeasurementType == nutrientMeasurementType) &&
            (identical(other.nutrientLimit, nutrientLimit) ||
                other.nutrientLimit == nutrientLimit) &&
            (identical(other.isReverseLimit, isReverseLimit) ||
                other.isReverseLimit == isReverseLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nutrientValue,
      nutrientName,
      nutrientDescription,
      nutrientMeasurementType,
      nutrientLimit,
      isReverseLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      __$$_NutrientCopyWithImpl<_$_Nutrient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NutrientToJson(
      this,
    );
  }
}

abstract class _Nutrient implements Nutrient {
  const factory _Nutrient(
      {required final double nutrientValue,
      required final String nutrientName,
      required final String nutrientDescription,
      required final String nutrientMeasurementType,
      final double? nutrientLimit,
      final bool? isReverseLimit}) = _$_Nutrient;

  factory _Nutrient.fromJson(Map<String, dynamic> json) = _$_Nutrient.fromJson;

  @override
  double get nutrientValue;
  @override
  String get nutrientName;
  @override
  String get nutrientDescription;
  @override
  String get nutrientMeasurementType;
  @override
  double? get nutrientLimit;
  @override
  bool? get isReverseLimit;
  @override
  @JsonKey(ignore: true)
  _$$_NutrientCopyWith<_$_Nutrient> get copyWith =>
      throw _privateConstructorUsedError;
}
