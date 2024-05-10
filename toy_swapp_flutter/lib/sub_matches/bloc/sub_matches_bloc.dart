import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'sub_matches_bloc.freezed.dart';
part 'sub_matches_event.dart';
part 'sub_matches_state.dart';

class SubMatchesBloc extends Bloc<SubMatchesEvent, SubMatchesState> {
  SubMatchesBloc({
    required AppPreferencesRepository appPreferencesRepository,
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(
          SubMatchesState(
            oldNote: appPreferencesRepository.appPreferences.note,
          ),
        ) {
    on<SubMatchesEvent>(_onSubMatchesEvent);
  }
  final AppPreferencesRepository _appPreferencesRepository;

  Future<void> _onSubMatchesEvent(
    SubMatchesEvent event,
    Emitter<SubMatchesState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      updateNote: (e) async {
        final tryUpdate = await _appPreferencesRepository.updateNote(
          note: e.note,
        );
        tryUpdate.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
