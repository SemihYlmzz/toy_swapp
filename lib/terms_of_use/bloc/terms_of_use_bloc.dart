import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'terms_of_use_bloc.freezed.dart';
part 'terms_of_use_event.dart';
part 'terms_of_use_state.dart';

class TermsOfUseBloc extends Bloc<TermsOfUseEvent, TermsOfUseState> {
  TermsOfUseBloc({
    required AppPreferencesRepository appPreferencesRepository,
    required AppMetadata appMetadata,
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(TermsOfUseState(appMetadata: appMetadata)) {
    on<TermsOfUseEvent>(_onTermsOfUseEvent);
  }
  // Repositories
  final AppPreferencesRepository _appPreferencesRepository;

  // Events
  Future<void> _onTermsOfUseEvent(
    TermsOfUseEvent event,
    Emitter<TermsOfUseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      acceptTermsOfUse: (e) async {
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
