// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toy_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ToyDetails _$ToyDetailsFromJson(Map<String, dynamic> json) {
  return _ToyDetails.fromJson(json);
}

/// @nodoc
mixin _$ToyDetails {
  ToyAge get age => throw _privateConstructorUsedError;
  ToyGender get gender => throw _privateConstructorUsedError;
  ToyCondition get condition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ToyDetailsCopyWith<ToyDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToyDetailsCopyWith<$Res> {
  factory $ToyDetailsCopyWith(
          ToyDetails value, $Res Function(ToyDetails) then) =
      _$ToyDetailsCopyWithImpl<$Res, ToyDetails>;
  @useResult
  $Res call({ToyAge age, ToyGender gender, ToyCondition condition});
}

/// @nodoc
class _$ToyDetailsCopyWithImpl<$Res, $Val extends ToyDetails>
    implements $ToyDetailsCopyWith<$Res> {
  _$ToyDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? condition = null,
  }) {
    return _then(_value.copyWith(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as ToyAge,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ToyGender,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ToyCondition,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToyDetailsImplCopyWith<$Res>
    implements $ToyDetailsCopyWith<$Res> {
  factory _$$ToyDetailsImplCopyWith(
          _$ToyDetailsImpl value, $Res Function(_$ToyDetailsImpl) then) =
      __$$ToyDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ToyAge age, ToyGender gender, ToyCondition condition});
}

/// @nodoc
class __$$ToyDetailsImplCopyWithImpl<$Res>
    extends _$ToyDetailsCopyWithImpl<$Res, _$ToyDetailsImpl>
    implements _$$ToyDetailsImplCopyWith<$Res> {
  __$$ToyDetailsImplCopyWithImpl(
      _$ToyDetailsImpl _value, $Res Function(_$ToyDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = null,
    Object? gender = null,
    Object? condition = null,
  }) {
    return _then(_$ToyDetailsImpl(
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as ToyAge,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as ToyGender,
      condition: null == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as ToyCondition,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ToyDetailsImpl with DiagnosticableTreeMixin implements _ToyDetails {
  const _$ToyDetailsImpl(
      {required this.age, required this.gender, required this.condition});

  factory _$ToyDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ToyDetailsImplFromJson(json);

  @override
  final ToyAge age;
  @override
  final ToyGender gender;
  @override
  final ToyCondition condition;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ToyDetails(age: $age, gender: $gender, condition: $condition)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ToyDetails'))
      ..add(DiagnosticsProperty('age', age))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('condition', condition));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToyDetailsImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, age, gender, condition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToyDetailsImplCopyWith<_$ToyDetailsImpl> get copyWith =>
      __$$ToyDetailsImplCopyWithImpl<_$ToyDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ToyDetailsImplToJson(
      this,
    );
  }
}

abstract class _ToyDetails implements ToyDetails {
  const factory _ToyDetails(
      {required final ToyAge age,
      required final ToyGender gender,
      required final ToyCondition condition}) = _$ToyDetailsImpl;

  factory _ToyDetails.fromJson(Map<String, dynamic> json) =
      _$ToyDetailsImpl.fromJson;

  @override
  ToyAge get age;
  @override
  ToyGender get gender;
  @override
  ToyCondition get condition;
  @override
  @JsonKey(ignore: true)
  _$$ToyDetailsImplCopyWith<_$ToyDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
