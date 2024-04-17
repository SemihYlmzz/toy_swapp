part of 'navigator_bar_bloc.dart';

@freezed
sealed class NavigatorBarEvent with _$NavigatorBarEvent {
  const factory NavigatorBarEvent.currentConsumerUpdated(
    Consumer updatedConsumer,
  ) = NavigatorBarCurrentConsumerUpdated;
}
