import 'dart:typed_data';

import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'account_registration_bloc.freezed.dart';
part 'account_registration_event.dart';
part 'account_registration_state.dart';

class AccountRegistrationBloc
    extends Bloc<AccountRegistrationEvent, AccountRegistrationState> {
  AccountRegistrationBloc({
    required ConsumerRepository consumerRepository,
    required AuthRepository authRepository,
  })  : _consumerRepository = consumerRepository,
        _authRepository = authRepository,
        super(AccountRegistrationState(authState: authRepository.currentAuth)) {
    on<AccountRegistrationEvent>(_onAccountRegistrationEvent);
    _authRepository.currentAuthStream.listen((event) {
      add(AccountRegistrationEvent.authStateUpdated(event));
    });
  }
  // Repositories
  final ConsumerRepository _consumerRepository;
  final AuthRepository _authRepository;

  Future<void> _onAccountRegistrationEvent(
    AccountRegistrationEvent event,
    Emitter<AccountRegistrationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      registerAccount: (e) async {
        if (state.authState == Auth.empty()) {
          return;
        }
        final tryCreate = await _consumerRepository.create(
          authId: state.authState.id,
          avatarImage1024: e.avatarImage1024,
          avatarImage128: e.avatarImage128,
          avatarImage256: e.avatarImage256,
          avatarImage512: e.avatarImage512,
          firstName: e.firstName,
          lastName: e.lastName,
          latitude: e.latitude,
          longitude: e.longitude,
          email: state.authState.email,
        );
        tryCreate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => null,
        );
      },
      authStateUpdated: (e) async => emit(
        state.copyWith(authState: e.updatedAuthState),
      ),
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
