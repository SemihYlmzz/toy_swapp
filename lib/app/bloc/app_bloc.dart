import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppPreferencesRepository appPreferencesRepository,
    required AppPreferences appPreferences,
    required AppMetadata appMetadata,
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(
          AppState(
            appPreferences: appPreferences,
            appMetadata: appMetadata,
          ),
        ) {
    on<AppEvent>(_onSignInEvent);

    // Listen AppPreferences Changes
    _appPreferencesRepository.appPreferencesStream.listen((event) {
      add(AppEvent.appPreferencesUpdated(updatedValue: event));
    });
  }
  // Repositories
  final AppPreferencesRepository _appPreferencesRepository;

  Future<void> _onSignInEvent(
    AppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      appPreferencesUpdated: (e) {
        emit(state.copyWith(appPreferences: e.updatedValue));
      },
      checkIsTermsAccepted: (e) async {
        final termsAcceptance = state.appPreferences.termsAcceptance;
        // [Terms Not Accepted]
        if (termsAcceptance == null) {
          emit(state.copyWith(needTermAcceptance: true));
          return;
        }
        final acceptedTermsReleaseNumber = termsAcceptance.termsReleaseNumber;

        final termsReleaseNumber =
            state.appMetadata.termsVersions.termsReleaseNumber;

        // [Terms Accepted] and [No New Terms]
        if (termsReleaseNumber <= acceptedTermsReleaseNumber) return;

        // [Terms Accepted] but [Urgent New Terms]
        final isReleasedTermsUrgent =
            state.appMetadata.termsVersions.isReleasedTermsUrgent;
        if (isReleasedTermsUrgent) {
          emit(state.copyWith(needTermAcceptance: true));
          return;
        }

        final isAppVersionUpdated = state.appMetadata.coreVersionNumber >
            state.appPreferences.termsAcceptance!.appCoreVersionNumber;
        // [Terms Accepted] but [Non Urgent New Terms] and [App Version Updated]
        if (isAppVersionUpdated) {
          emit(state.copyWith(needTermAcceptance: true));
          return;
        }
      },
    );

    emit(
      state.copyWith(
        isLoading: false,
        failure: null,
        needTermAcceptance: false,
      ),
    );
  }
}
