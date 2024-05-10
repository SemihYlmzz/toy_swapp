part of 'support_profile_bloc.dart';

@freezed
class SupportProfileState with _$SupportProfileState {
   const factory SupportProfileState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SupportProfileState;
}
