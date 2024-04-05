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
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(const TermsOfUseState()) {
    on<TermsOfUseEvent>(_onTermsOfUseEvent);
  }

  final AppPreferencesRepository _appPreferencesRepository;

  Future<void> _onTermsOfUseEvent(
    TermsOfUseEvent event,
    Emitter<TermsOfUseState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      acceptTerms: (e) async {
        await _appPreferencesRepository.acceptTermsOfUse();
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
