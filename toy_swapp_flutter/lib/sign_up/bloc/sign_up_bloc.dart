import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SignUpState()) {
    on<SignUpEvent>(_onSignUpEvent);
  }
  final AuthRepository _authRepository;
  Future<void> _onSignUpEvent(
    SignUpEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      createUserWithEmailAndPassword: (e) async {
        final tryCreate = await _authRepository.createUserWithEmailAndPassword(
          email: e.email,
          password: e.password,
          confirmedPassword: e.confirmedPassword,
        );
        tryCreate.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
