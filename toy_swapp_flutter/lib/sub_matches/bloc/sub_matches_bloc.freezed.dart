// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_matches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubMatchesEvent {
  String get note => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String note) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String note)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String note)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubMatchesUpdateNote value) updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubMatchesUpdateNote value)? updateNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubMatchesUpdateNote value)? updateNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubMatchesEventCopyWith<SubMatchesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubMatchesEventCopyWith<$Res> {
  factory $SubMatchesEventCopyWith(
          SubMatchesEvent value, $Res Function(SubMatchesEvent) then) =
      _$SubMatchesEventCopyWithImpl<$Res, SubMatchesEvent>;
  @useResult
  $Res call({String note});
}

/// @nodoc
class _$SubMatchesEventCopyWithImpl<$Res, $Val extends SubMatchesEvent>
    implements $SubMatchesEventCopyWith<$Res> {
  _$SubMatchesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubMatchesUpdateNoteImplCopyWith<$Res>
    implements $SubMatchesEventCopyWith<$Res> {
  factory _$$SubMatchesUpdateNoteImplCopyWith(_$SubMatchesUpdateNoteImpl value,
          $Res Function(_$SubMatchesUpdateNoteImpl) then) =
      __$$SubMatchesUpdateNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String note});
}

/// @nodoc
class __$$SubMatchesUpdateNoteImplCopyWithImpl<$Res>
    extends _$SubMatchesEventCopyWithImpl<$Res, _$SubMatchesUpdateNoteImpl>
    implements _$$SubMatchesUpdateNoteImplCopyWith<$Res> {
  __$$SubMatchesUpdateNoteImplCopyWithImpl(_$SubMatchesUpdateNoteImpl _value,
      $Res Function(_$SubMatchesUpdateNoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = null,
  }) {
    return _then(_$SubMatchesUpdateNoteImpl(
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubMatchesUpdateNoteImpl implements SubMatchesUpdateNote {
  const _$SubMatchesUpdateNoteImpl({required this.note});

  @override
  final String note;

  @override
  String toString() {
    return 'SubMatchesEvent.updateNote(note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubMatchesUpdateNoteImpl &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubMatchesUpdateNoteImplCopyWith<_$SubMatchesUpdateNoteImpl>
      get copyWith =>
          __$$SubMatchesUpdateNoteImplCopyWithImpl<_$SubMatchesUpdateNoteImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String note) updateNote,
  }) {
    return updateNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String note)? updateNote,
  }) {
    return updateNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String note)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubMatchesUpdateNote value) updateNote,
  }) {
    return updateNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubMatchesUpdateNote value)? updateNote,
  }) {
    return updateNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubMatchesUpdateNote value)? updateNote,
    required TResult orElse(),
  }) {
    if (updateNote != null) {
      return updateNote(this);
    }
    return orElse();
  }
}

abstract class SubMatchesUpdateNote implements SubMatchesEvent {
  const factory SubMatchesUpdateNote({required final String note}) =
      _$SubMatchesUpdateNoteImpl;

  @override
  String get note;
  @override
  @JsonKey(ignore: true)
  _$$SubMatchesUpdateNoteImplCopyWith<_$SubMatchesUpdateNoteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubMatchesState {
  String get oldNote => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubMatchesStateCopyWith<SubMatchesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubMatchesStateCopyWith<$Res> {
  factory $SubMatchesStateCopyWith(
          SubMatchesState value, $Res Function(SubMatchesState) then) =
      _$SubMatchesStateCopyWithImpl<$Res, SubMatchesState>;
  @useResult
  $Res call({String oldNote, bool isLoading, Failure? failure});
}

/// @nodoc
class _$SubMatchesStateCopyWithImpl<$Res, $Val extends SubMatchesState>
    implements $SubMatchesStateCopyWith<$Res> {
  _$SubMatchesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldNote = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      oldNote: null == oldNote
          ? _value.oldNote
          : oldNote // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$SubMatchesStateImplCopyWith<$Res>
    implements $SubMatchesStateCopyWith<$Res> {
  factory _$$SubMatchesStateImplCopyWith(_$SubMatchesStateImpl value,
          $Res Function(_$SubMatchesStateImpl) then) =
      __$$SubMatchesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldNote, bool isLoading, Failure? failure});
}

/// @nodoc
class __$$SubMatchesStateImplCopyWithImpl<$Res>
    extends _$SubMatchesStateCopyWithImpl<$Res, _$SubMatchesStateImpl>
    implements _$$SubMatchesStateImplCopyWith<$Res> {
  __$$SubMatchesStateImplCopyWithImpl(
      _$SubMatchesStateImpl _value, $Res Function(_$SubMatchesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldNote = null,
    Object? isLoading = null,
    Object? failure = freezed,
  }) {
    return _then(_$SubMatchesStateImpl(
      oldNote: null == oldNote
          ? _value.oldNote
          : oldNote // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$SubMatchesStateImpl implements _SubMatchesState {
  const _$SubMatchesStateImpl(
      {required this.oldNote, this.isLoading = false, this.failure});

  @override
  final String oldNote;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? failure;

  @override
  String toString() {
    return 'SubMatchesState(oldNote: $oldNote, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubMatchesStateImpl &&
            (identical(other.oldNote, oldNote) || other.oldNote == oldNote) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldNote, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubMatchesStateImplCopyWith<_$SubMatchesStateImpl> get copyWith =>
      __$$SubMatchesStateImplCopyWithImpl<_$SubMatchesStateImpl>(
          this, _$identity);
}

abstract class _SubMatchesState implements SubMatchesState {
  const factory _SubMatchesState(
      {required final String oldNote,
      final bool isLoading,
      final Failure? failure}) = _$SubMatchesStateImpl;

  @override
  String get oldNote;
  @override
  bool get isLoading;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$SubMatchesStateImplCopyWith<_$SubMatchesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
