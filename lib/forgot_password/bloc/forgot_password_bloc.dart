import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const ForgotPasswordState()) {
    on<ForgotPasswordEvent>(_onForgotPasswordEvent);
  }
  // Repositories
  final AuthRepository _authRepository;

  Future<void> _onForgotPasswordEvent(
    ForgotPasswordEvent event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      sendPasswordResetEmail: (e) async {
        final trySend = await _authRepository.sendPasswordResetEmail(
          email: e.email,
        );
        trySend.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => emit(state.copyWith(isResetPasswordSend: true)),
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
