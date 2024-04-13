import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SettingsState()) {
    on<SettingsEvent>(_onSettingsEvent);
  }
  final AuthRepository _authRepository;

  Future<void> _onSettingsEvent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      authSignOut: (value) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => emit(state.copyWith(isSignOutCompleted: true)),
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
