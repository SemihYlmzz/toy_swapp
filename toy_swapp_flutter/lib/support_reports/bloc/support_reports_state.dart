part of 'support_reports_bloc.dart';

@freezed
class SupportReportsState with _$SupportReportsState {
   const factory SupportReportsState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _SupportReportsState;
}
