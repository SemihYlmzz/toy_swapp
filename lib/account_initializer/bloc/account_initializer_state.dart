part of 'account_initializer_bloc.dart';

@freezed
class AccountInitializerState with _$AccountInitializerState {
   const factory AccountInitializerState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _AccountInitializerState;
}
