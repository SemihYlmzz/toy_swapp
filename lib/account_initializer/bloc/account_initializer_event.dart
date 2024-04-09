part of 'account_initializer_bloc.dart';

@freezed
sealed class AccountInitializerEvent with _$AccountInitializerEvent {
  const factory AccountInitializerEvent.fetch() = AccountInitializerFetch;
}
