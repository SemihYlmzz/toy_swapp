import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(
          AppState(isSignedIn: authRepository.isSignedIn()),
        ) {
    on<AppEvent>(_onSignInEvent);
    _authRepository.isSignedInStream().listen((event) {
      add(AppEvent.isSignedInUpdated(isSignedInValue: event));
    });
  }
  // Repositories & Services
  final AuthRepository _authRepository;

  Future<void> _onSignInEvent(
    AppEvent event,
    Emitter<AppState> emit,
  ) async {
    // emit(state.copyWith(isLoading: true));

    await event.map(
      isSignedInUpdated: (e) async {
        emit(state.copyWith(isSignedIn: e.isSignedInValue));
      },
    );

    // emit(state.copyWith(isLoading: false, failure: null));
  }
}
