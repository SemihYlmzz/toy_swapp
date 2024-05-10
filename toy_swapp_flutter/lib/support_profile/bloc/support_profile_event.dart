part of 'support_profile_bloc.dart';

@freezed
sealed class SupportProfileEvent with _$SupportProfileEvent {
  const factory SupportProfileEvent.fetch() = SupportProfileFetch;
}
