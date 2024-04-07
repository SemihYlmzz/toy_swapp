import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignInState()) {
    on<SignInEvent>(_onSignInEvent);
  }
  // Repositories & Services
  final AuthRepository _authRepository;

  Future<void> _onSignInEvent(
    SignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      signInWithEmailAndPassword: (e) async {
        final trySignIn = await _authRepository.signInWithEmailAndPassword(
          email: e.email,
          password: e.password,
        );
        trySignIn.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
