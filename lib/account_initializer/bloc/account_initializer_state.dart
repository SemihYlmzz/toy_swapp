part of 'account_initializer_bloc.dart';

@freezed
class AccountInitializerState with _$AccountInitializerState {
  const factory AccountInitializerState({
    required Auth currentAuth,
    @Default(false) bool isLoading,
    @Default(false) bool consumerNeedsCreation,
    Failure? failure,
    Failure? fetchAccountDataFailure,
  }) = _AccountInitializerState;
}