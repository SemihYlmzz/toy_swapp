import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_constants/shared_constants.dart';
import '../../errors/errors.dart';

part 'email_verification_bloc.freezed.dart';
part 'email_verification_event.dart';
part 'email_verification_state.dart';

class EmailVerificationBloc
    extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  EmailVerificationBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(EmailVerificationState(authState: authRepository.currentAuth)) {
    on<EmailVerificationEvent>(_onEmailVerificationEvent);
    // Update [AuthState] when it changes
    _authListener = _authRepository.currentAuthStream.listen((event) {
      add(EmailVerificationEvent.authStateUpdated(event));
    });
    // [Reload] the [AuthState] every second if link tapped.
    _timerInAction ??= Timer.periodic(
      SharedDurations.s2,
      (timer) {
        add(const EmailVerificationEvent.reloadAuthState());
      },
    );
  }
  // Instances
  final AuthRepository _authRepository;
  StreamSubscription<dynamic>? _authListener;
  Timer? _timerInAction;

  // Events
  Future<void> _onEmailVerificationEvent(
    EmailVerificationEvent event,
    Emitter<EmailVerificationState> emit,
  ) async {
    if (event is! EmailVerificationReloadAuthState) {
      emit(state.copyWith(isLoading: true));
    }

    await event.map(
      sendVerificationEmail: (value) async {
        final trySend = await _authRepository.sendVerificationEmail();
        trySend.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => emit(state.copyWith(emailSendedDate: DateTime.now())),
        );
      },
      signOut: (value) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold((l) => emit(state.copyWith(failure: l)), (r) => null);
      },
      reloadAuthState: (e) async {
        final tryUpdate = await _authRepository.reload();

        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => emit(
            state.copyWith(verificationLastCheckedDate: DateTime.now()),
          ),
        );
      },
      authStateUpdated: (e) {
        emit(state.copyWith(authState: _authRepository.currentAuth));
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }

  @override
  Future<void> close() {
    _authListener?.cancel();
    _timerInAction?.cancel();
    return super.close();
  }
}
