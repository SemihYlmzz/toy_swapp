import 'dart:async';

import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'terms_acceptance_bloc.freezed.dart';
part 'terms_acceptance_event.dart';
part 'terms_acceptance_state.dart';

class TermsAcceptanceBloc
    extends Bloc<TermsAcceptanceEvent, TermsAcceptanceState> {
  TermsAcceptanceBloc({
    required AppPreferencesRepository appPreferencesRepository,
    required AppMetadataRepository appMetadataRepository,
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(
          TermsAcceptanceState(
            appMetadata: appMetadataRepository.appMetadata,
            appPreferences: appPreferencesRepository.appPreferences,
          ),
        ) {
    on<TermsAcceptanceEvent>(_onTermsAcceptanceEvent);
    // Listen AppPreferences Changes
    appPreferencesSubscription =
        _appPreferencesRepository.appPreferencesStream.listen((updatedValue) {
      add(TermsAcceptanceEvent.appPreferencesUpdated(updatedValue));
    });
  }
  // Repositories
  final AppPreferencesRepository _appPreferencesRepository;

  // Subscriptions
  StreamSubscription<AppPreferences>? appPreferencesSubscription;

  // Dispose Subscriptions
  @override
  Future<void> close() {
    appPreferencesSubscription?.cancel();
    return super.close();
  }

  // Events
  Future<void> _onTermsAcceptanceEvent(
    TermsAcceptanceEvent event,
    Emitter<TermsAcceptanceState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      appPreferencesUpdated: (e) async =>
          emit(state.copyWith(appPreferences: e.updatedValue)),
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
        if (termsReleaseNumber <= acceptedTermsReleaseNumber) {
          emit(state.copyWith(needTermAcceptance: false));
          return;
        }

        // [Terms Accepted] but [Urgent New Terms]
        final isReleasedTermsUrgent =
            state.appMetadata.termsVersions.isReleasedTermsUrgent;
        if (isReleasedTermsUrgent) {
          emit(state.copyWith(needTermAcceptance: true));
          return;
        }

        final isAppVersionUpdated = state.appMetadata.coreVersionNumber >
            termsAcceptance.appCoreVersionNumber;
        // [Terms Accepted] but [Non Urgent New Terms] and [App Version Updated]
        if (isAppVersionUpdated) {
          emit(state.copyWith(needTermAcceptance: true));
          return;
        }
        emit(state.copyWith(needTermAcceptance: false));
      },
      acceptTermsOfUse: (value) async {
        final appMetadata = state.appMetadata;
        final tryAccept = await _appPreferencesRepository.acceptTermsOfUse(
          appCoreVersionNumber: appMetadata.coreVersionNumber,
          termsReleaseNumber: appMetadata.termsVersions.termsReleaseNumber,
        );

        tryAccept.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (unit) => emit(state.copyWith(isTermsOfUseAccepted: true)),
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
