import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const HomeState()) {
    on<HomeEvent>(_onHomeEvent);
  }
  // Repositories & Services
  final AuthRepository _authRepository;

  // Functions
  Future<void> _onHomeEvent(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      signOut: (e) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
