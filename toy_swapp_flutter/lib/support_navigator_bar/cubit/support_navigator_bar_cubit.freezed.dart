// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_navigator_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupportNavigatorBarCubitState {
  GoRouterState get goRouterState => throw _privateConstructorUsedError;
  List<SupportNavigatorBarSubGoRoute> get subRoutes =>
      throw _privateConstructorUsedError;
  SupportNavigatorBarSubGoRoute? get selectedSubRoute =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportNavigatorBarCubitStateCopyWith<SupportNavigatorBarCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportNavigatorBarCubitStateCopyWith<$Res> {
  factory $SupportNavigatorBarCubitStateCopyWith(
          SupportNavigatorBarCubitState value,
          $Res Function(SupportNavigatorBarCubitState) then) =
      _$SupportNavigatorBarCubitStateCopyWithImpl<$Res,
          SupportNavigatorBarCubitState>;
  @useResult
  $Res call(
      {GoRouterState goRouterState,
      List<SupportNavigatorBarSubGoRoute> subRoutes,
      SupportNavigatorBarSubGoRoute? selectedSubRoute,
      bool isLoading,
      Failure? failure});
}

/// @nodoc
class _$SupportNavigatorBarCubitStateCopyWithImpl<$Res,
        $Val extends SupportNavigatorBarCubitState>
    implements $SupportNavigatorBarCubitStateCopyWith<$Res> {
  _$SupportNavigatorBarCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouterState = null,
    Object? subRoutes = null,
    Object? selectedSubRoute = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      goRouterState: null == goRouterState
          ? _value.goRouterState
          : goRouterState // ignore: cast_nullable_to_non_nullable
              as GoRouterState,
      subRoutes: null == subRoutes
          ? _value.subRoutes
          : subRoutes // ignore: cast_nullable_to_non_nullable
              as List<SupportNavigatorBarSubGoRoute>,
      selectedSubRoute: freezed == selectedSubRoute
          ? _value.selectedSubRoute
          : selectedSubRoute // ignore: cast_nullable_to_non_nullable
              as SupportNavigatorBarSubGoRoute?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupportNavigatorBarCubitStateImplCopyWith<$Res>
    implements $SupportNavigatorBarCubitStateCopyWith<$Res> {
  factory _$$SupportNavigatorBarCubitStateImplCopyWith(
          _$SupportNavigatorBarCubitStateImpl value,
          $Res Function(_$SupportNavigatorBarCubitStateImpl) then) =
      __$$SupportNavigatorBarCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GoRouterState goRouterState,
      List<SupportNavigatorBarSubGoRoute> subRoutes,
      SupportNavigatorBarSubGoRoute? selectedSubRoute,
      bool isLoading,
      Failure? failure});
}

/// @nodoc
class __$$SupportNavigatorBarCubitStateImplCopyWithImpl<$Res>
    extends _$SupportNavigatorBarCubitStateCopyWithImpl<$Res,
        _$SupportNavigatorBarCubitStateImpl>
    implements _$$SupportNavigatorBarCubitStateImplCopyWith<$Res> {
  __$$SupportNavigatorBarCubitStateImplCopyWithImpl(
      _$SupportNavigatorBarCubitStateImpl _value,
      $Res Function(_$SupportNavigatorBarCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouterState = null,
    Object? subRoutes = null,
    Object? selectedSubRoute = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SupportNavigatorBarCubitStateImpl(
      goRouterState: null == goRouterState
          ? _value.goRouterState
          : goRouterState // ignore: cast_nullable_to_non_nullable
              as GoRouterState,
      subRoutes: null == subRoutes
          ? _value._subRoutes
          : subRoutes // ignore: cast_nullable_to_non_nullable
              as List<SupportNavigatorBarSubGoRoute>,
      selectedSubRoute: freezed == selectedSubRoute
          ? _value.selectedSubRoute
          : selectedSubRoute // ignore: cast_nullable_to_non_nullable
              as SupportNavigatorBarSubGoRoute?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$SupportNavigatorBarCubitStateImpl
    implements _SupportNavigatorBarCubitState {
  const _$SupportNavigatorBarCubitStateImpl(
      {required this.goRouterState,
      required final List<SupportNavigatorBarSubGoRoute> subRoutes,
      this.selectedSubRoute,
      this.isLoading = false,
      this.failure})
      : _subRoutes = subRoutes;

  @override
  final GoRouterState goRouterState;
  final List<SupportNavigatorBarSubGoRoute> _subRoutes;
  @override
  List<SupportNavigatorBarSubGoRoute> get subRoutes {
    if (_subRoutes is EqualUnmodifiableListView) return _subRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subRoutes);
  }

  @override
  final SupportNavigatorBarSubGoRoute? selectedSubRoute;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SupportNavigatorBarCubitState(goRouterState: $goRouterState, subRoutes: $subRoutes, selectedSubRoute: $selectedSubRoute, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupportNavigatorBarCubitStateImpl &&
            (identical(other.goRouterState, goRouterState) ||
                other.goRouterState == goRouterState) &&
            const DeepCollectionEquality()
                .equals(other._subRoutes, _subRoutes) &&
            (identical(other.selectedSubRoute, selectedSubRoute) ||
                other.selectedSubRoute == selectedSubRoute) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      goRouterState,
      const DeepCollectionEquality().hash(_subRoutes),
      selectedSubRoute,
      isLoading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupportNavigatorBarCubitStateImplCopyWith<
          _$SupportNavigatorBarCubitStateImpl>
      get copyWith => __$$SupportNavigatorBarCubitStateImplCopyWithImpl<
          _$SupportNavigatorBarCubitStateImpl>(this, _$identity);
}

abstract class _SupportNavigatorBarCubitState
    implements SupportNavigatorBarCubitState {
  const factory _SupportNavigatorBarCubitState(
      {required final GoRouterState goRouterState,
      required final List<SupportNavigatorBarSubGoRoute> subRoutes,
      final SupportNavigatorBarSubGoRoute? selectedSubRoute,
      final bool isLoading,
      final Failure? failure}) = _$SupportNavigatorBarCubitStateImpl;

  @override
  GoRouterState get goRouterState;
  @override
  List<SupportNavigatorBarSubGoRoute> get subRoutes;
  @override
  SupportNavigatorBarSubGoRoute? get selectedSubRoute;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SupportNavigatorBarCubitStateImplCopyWith<
          _$SupportNavigatorBarCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
