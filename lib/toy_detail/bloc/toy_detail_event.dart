part of 'toy_detail_bloc.dart';

@freezed
sealed class ToyDetailEvent with _$ToyDetailEvent {
  const factory ToyDetailEvent.currentConsumerUpdated(
    Consumer? updatedConsumer,
  ) = ToyDetailCurrentConsumerUpdated;
  const factory ToyDetailEvent.loadToyAndOwner({
    required String toyID,
  }) = ToyDetailLoadToyAndOwner;
}
