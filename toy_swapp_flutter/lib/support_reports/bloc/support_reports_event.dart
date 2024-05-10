part of 'support_reports_bloc.dart';

@freezed
sealed class SupportReportsEvent with _$SupportReportsEvent {
  const factory SupportReportsEvent.fetch() = SupportReportsFetch;
}
