part of 'support_navigator_bar_bloc.dart';

@freezed
sealed class SupportNavigatorBarEvent with _$SupportNavigatorBarEvent {
  const factory SupportNavigatorBarEvent.authSignOut() =
      SupportNavigatorBarAuthSignOut;
}
