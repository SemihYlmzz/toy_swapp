// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigator_bar_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigatorBarCubitState {
  GoRouterState get goRouterState => throw _privateConstructorUsedError;
  List<NavigatorBarSubGoRoute> get subRoutes =>
      throw _privateConstructorUsedError;
  List<ToyImage> get imageUrlList => throw _privateConstructorUsedError;
  NavigatorBarSubGoRoute? get selectedSubRoute =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigatorBarCubitStateCopyWith<NavigatorBarCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorBarCubitStateCopyWith<$Res> {
  factory $NavigatorBarCubitStateCopyWith(NavigatorBarCubitState value,
          $Res Function(NavigatorBarCubitState) then) =
      _$NavigatorBarCubitStateCopyWithImpl<$Res, NavigatorBarCubitState>;
  @useResult
  $Res call(
      {GoRouterState goRouterState,
      List<NavigatorBarSubGoRoute> subRoutes,
      List<ToyImage> imageUrlList,
      NavigatorBarSubGoRoute? selectedSubRoute,
      bool isLoading,
      Failure? failure});
}

/// @nodoc
class _$NavigatorBarCubitStateCopyWithImpl<$Res,
        $Val extends NavigatorBarCubitState>
    implements $NavigatorBarCubitStateCopyWith<$Res> {
  _$NavigatorBarCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouterState = null,
    Object? subRoutes = null,
    Object? imageUrlList = null,
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
              as List<NavigatorBarSubGoRoute>,
      imageUrlList: null == imageUrlList
          ? _value.imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<ToyImage>,
      selectedSubRoute: freezed == selectedSubRoute
          ? _value.selectedSubRoute
          : selectedSubRoute // ignore: cast_nullable_to_non_nullable
              as NavigatorBarSubGoRoute?,
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
abstract class _$$NavigatorBarCubitStateImplCopyWith<$Res>
    implements $NavigatorBarCubitStateCopyWith<$Res> {
  factory _$$NavigatorBarCubitStateImplCopyWith(
          _$NavigatorBarCubitStateImpl value,
          $Res Function(_$NavigatorBarCubitStateImpl) then) =
      __$$NavigatorBarCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GoRouterState goRouterState,
      List<NavigatorBarSubGoRoute> subRoutes,
      List<ToyImage> imageUrlList,
      NavigatorBarSubGoRoute? selectedSubRoute,
      bool isLoading,
      Failure? failure});
}

/// @nodoc
class __$$NavigatorBarCubitStateImplCopyWithImpl<$Res>
    extends _$NavigatorBarCubitStateCopyWithImpl<$Res,
        _$NavigatorBarCubitStateImpl>
    implements _$$NavigatorBarCubitStateImplCopyWith<$Res> {
  __$$NavigatorBarCubitStateImplCopyWithImpl(
      _$NavigatorBarCubitStateImpl _value,
      $Res Function(_$NavigatorBarCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goRouterState = null,
    Object? subRoutes = null,
    Object? imageUrlList = null,
    Object? selectedSubRoute = freezed,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$NavigatorBarCubitStateImpl(
      goRouterState: null == goRouterState
          ? _value.goRouterState
          : goRouterState // ignore: cast_nullable_to_non_nullable
              as GoRouterState,
      subRoutes: null == subRoutes
          ? _value._subRoutes
          : subRoutes // ignore: cast_nullable_to_non_nullable
              as List<NavigatorBarSubGoRoute>,
      imageUrlList: null == imageUrlList
          ? _value._imageUrlList
          : imageUrlList // ignore: cast_nullable_to_non_nullable
              as List<ToyImage>,
      selectedSubRoute: freezed == selectedSubRoute
          ? _value.selectedSubRoute
          : selectedSubRoute // ignore: cast_nullable_to_non_nullable
              as NavigatorBarSubGoRoute?,
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

class _$NavigatorBarCubitStateImpl implements _NavigatorBarCubitState {
  const _$NavigatorBarCubitStateImpl(
      {required this.goRouterState,
      required final List<NavigatorBarSubGoRoute> subRoutes,
      final List<ToyImage> imageUrlList = const [],
      this.selectedSubRoute,
      this.isLoading = false,
      this.failure})
      : _subRoutes = subRoutes,
        _imageUrlList = imageUrlList;

  @override
  final GoRouterState goRouterState;
  final List<NavigatorBarSubGoRoute> _subRoutes;
  @override
  List<NavigatorBarSubGoRoute> get subRoutes {
    if (_subRoutes is EqualUnmodifiableListView) return _subRoutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subRoutes);
  }

  final List<ToyImage> _imageUrlList;
  @override
  @JsonKey()
  List<ToyImage> get imageUrlList {
    if (_imageUrlList is EqualUnmodifiableListView) return _imageUrlList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrlList);
  }

  @override
  final NavigatorBarSubGoRoute? selectedSubRoute;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'NavigatorBarCubitState(goRouterState: $goRouterState, subRoutes: $subRoutes, imageUrlList: $imageUrlList, selectedSubRoute: $selectedSubRoute, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigatorBarCubitStateImpl &&
            (identical(other.goRouterState, goRouterState) ||
                other.goRouterState == goRouterState) &&
            const DeepCollectionEquality()
                .equals(other._subRoutes, _subRoutes) &&
            const DeepCollectionEquality()
                .equals(other._imageUrlList, _imageUrlList) &&
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
      const DeepCollectionEquality().hash(_imageUrlList),
      selectedSubRoute,
      isLoading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigatorBarCubitStateImplCopyWith<_$NavigatorBarCubitStateImpl>
      get copyWith => __$$NavigatorBarCubitStateImplCopyWithImpl<
          _$NavigatorBarCubitStateImpl>(this, _$identity);
}

abstract class _NavigatorBarCubitState implements NavigatorBarCubitState {
  const factory _NavigatorBarCubitState(
      {required final GoRouterState goRouterState,
      required final List<NavigatorBarSubGoRoute> subRoutes,
      final List<ToyImage> imageUrlList,
      final NavigatorBarSubGoRoute? selectedSubRoute,
      final bool isLoading,
      final Failure? failure}) = _$NavigatorBarCubitStateImpl;

  @override
  GoRouterState get goRouterState;
  @override
  List<NavigatorBarSubGoRoute> get subRoutes;
  @override
  List<ToyImage> get imageUrlList;
  @override
  NavigatorBarSubGoRoute? get selectedSubRoute;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$NavigatorBarCubitStateImplCopyWith<_$NavigatorBarCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
