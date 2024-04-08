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
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(AppState(appPreferences: appPreferences)) {
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
        final isTermsAcceptedBefore =
            state.appPreferences.termsOfUseAcceptance != null;

        emit(state.copyWith(isTermsAcceptedBefore: isTermsAcceptedBefore));
      },
    );

    emit(
      state.copyWith(
        isLoading: false,
        failure: null,
        isTermsAcceptedBefore: null,
      ),
    );
  }
}
