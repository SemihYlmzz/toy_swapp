// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Counters _$CountersFromJson(Map<String, dynamic> json) {
  return _Counters.fromJson(json);
}

/// @nodoc
mixin _$Counters {
  int get ownedToy => throw _privateConstructorUsedError;
  int get switchChance => throw _privateConstructorUsedError;
  int get switchs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountersCopyWith<Counters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountersCopyWith<$Res> {
  factory $CountersCopyWith(Counters value, $Res Function(Counters) then) =
      _$CountersCopyWithImpl<$Res, Counters>;
  @useResult
  $Res call({int ownedToy, int switchChance, int switchs});
}

/// @nodoc
class _$CountersCopyWithImpl<$Res, $Val extends Counters>
    implements $CountersCopyWith<$Res> {
  _$CountersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedToy = null,
    Object? switchChance = null,
    Object? switchs = null,
  }) {
    return _then(_value.copyWith(
      ownedToy: null == ownedToy
          ? _value.ownedToy
          : ownedToy // ignore: cast_nullable_to_non_nullable
              as int,
      switchChance: null == switchChance
          ? _value.switchChance
          : switchChance // ignore: cast_nullable_to_non_nullable
              as int,
      switchs: null == switchs
          ? _value.switchs
          : switchs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountersImplCopyWith<$Res>
    implements $CountersCopyWith<$Res> {
  factory _$$CountersImplCopyWith(
          _$CountersImpl value, $Res Function(_$CountersImpl) then) =
      __$$CountersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int ownedToy, int switchChance, int switchs});
}

/// @nodoc
class __$$CountersImplCopyWithImpl<$Res>
    extends _$CountersCopyWithImpl<$Res, _$CountersImpl>
    implements _$$CountersImplCopyWith<$Res> {
  __$$CountersImplCopyWithImpl(
      _$CountersImpl _value, $Res Function(_$CountersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownedToy = null,
    Object? switchChance = null,
    Object? switchs = null,
  }) {
    return _then(_$CountersImpl(
      ownedToy: null == ownedToy
          ? _value.ownedToy
          : ownedToy // ignore: cast_nullable_to_non_nullable
              as int,
      switchChance: null == switchChance
          ? _value.switchChance
          : switchChance // ignore: cast_nullable_to_non_nullable
              as int,
      switchs: null == switchs
          ? _value.switchs
          : switchs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountersImpl with DiagnosticableTreeMixin implements _Counters {
  const _$CountersImpl(
      {required this.ownedToy,
      required this.switchChance,
      required this.switchs});

  factory _$CountersImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountersImplFromJson(json);

  @override
  final int ownedToy;
  @override
  final int switchChance;
  @override
  final int switchs;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Counters(ownedToy: $ownedToy, switchChance: $switchChance, switchs: $switchs)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Counters'))
      ..add(DiagnosticsProperty('ownedToy', ownedToy))
      ..add(DiagnosticsProperty('switchChance', switchChance))
      ..add(DiagnosticsProperty('switchs', switchs));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountersImpl &&
            (identical(other.ownedToy, ownedToy) ||
                other.ownedToy == ownedToy) &&
            (identical(other.switchChance, switchChance) ||
                other.switchChance == switchChance) &&
            (identical(other.switchs, switchs) || other.switchs == switchs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownedToy, switchChance, switchs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      __$$CountersImplCopyWithImpl<_$CountersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountersImplToJson(
      this,
    );
  }
}

abstract class _Counters implements Counters {
  const factory _Counters(
      {required final int ownedToy,
      required final int switchChance,
      required final int switchs}) = _$CountersImpl;

  factory _Counters.fromJson(Map<String, dynamic> json) =
      _$CountersImpl.fromJson;

  @override
  int get ownedToy;
  @override
  int get switchChance;
  @override
  int get switchs;
  @override
  @JsonKey(ignore: true)
  _$$CountersImplCopyWith<_$CountersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
