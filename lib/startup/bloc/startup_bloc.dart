import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp/initializers/initializers.dart';

part 'startup_bloc.freezed.dart';
part 'startup_event.dart';
part 'startup_state.dart';

class StartupBloc extends Bloc<StartupEvent, StartupState> {
  StartupBloc({
    required AppRequirementsInitializer appRequirementsInitializer,
  })  : _appRequirementsInitializer = appRequirementsInitializer,
        super(const StartupState()) {
    on<StartupEvent>(_onStartupEvent);
  }
  final AppRequirementsInitializer _appRequirementsInitializer;

  Future<void> _onStartupEvent(
    StartupEvent event,
    Emitter<StartupState> emit,
  ) async {
    await event.map(
      initializeAll: (e) async {
        emit(
          state.copyWith(
            isInitializing: true,
            displayErrorScreen: false,
            isInitializeError: false,
          ),
        );
        try {
          await Future<void>.delayed(const Duration(milliseconds: 300));
          final appRequirements =
              await _appRequirementsInitializer.setupRequirements();

          emit(state.copyWith(appRequirements: appRequirements));
        } catch (exception) {
          emit(state.copyWith(isInitializeError: true));
        }
        emit(state.copyWith(isInitializing: false));
      },
      displayErrorScreen: (e) {
        emit(state.copyWith(displayErrorScreen: true));
      },
    );
  }
}
