part of 'permissions_bloc.dart';

@freezed
class PermissionsState with _$PermissionsState {
   const factory PermissionsState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _PermissionsState;
}
