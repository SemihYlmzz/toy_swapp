import 'dart:async';

import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'terms_of_use_bloc.freezed.dart';
part 'terms_of_use_event.dart';
part 'terms_of_use_state.dart';

class TermsOfUseBloc extends Bloc<TermsOfUseEvent, TermsOfUseState> {
  TermsOfUseBloc({
    required AppPreferencesRepository appPreferencesRepository,
    required AppMetadataRepository appMetadataRepository,
  })  : _appPreferencesRepository = appPreferencesRepository,
        _appMetadataRepository = appMetadataRepository,
        super(const TermsOfUseState()) {
    on<TermsOfUseEvent>(_onTermsOfUseEvent);
    appMetadataRepository.appMetadataStream.listen((event) {
      add(TermsOfUseEvent.appMetadataUpdated(appMetadata: event));
    });
  }

  final AppPreferencesRepository _appPreferencesRepository;
  final AppMetadataRepository _appMetadataRepository;

  Future<void> _onTermsOfUseEvent(
    TermsOfUseEvent event,
    Emitter<TermsOfUseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await event.map(
      appMetadataUpdated: (e) async {
        emit(state.copyWith(appMetadata: e.appMetadata));
      },
      loadTermsOfUseVersion: (e) async {
        await _appMetadataRepository.getValues();
      },
      acceptTerms: (e) async {
        await _appPreferencesRepository.acceptTermsOfUse();
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
