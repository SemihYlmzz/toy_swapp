import 'dart:async';

import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'account_settings_bloc.freezed.dart';
part 'account_settings_event.dart';
part 'account_settings_state.dart';

class AccountSettingsBloc
    extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  AccountSettingsBloc({
    required ConsumerRepository consumerRepository,
    required AuthRepository authRepository,
  })  : _consumerRepository = consumerRepository,
        _authRepository = authRepository,
        super(
          AccountSettingsState(
            currentConsumer: consumerRepository.currentConsumer!,
          ),
        ) {
    on<AccountSettingsEvent>(_onAccountSettingsEvent);

    _consumerSubscription = _consumerRepository.currentConsumerStream.listen(
      (consumer) {
        if (consumer == null) {
          return;
        }
        add(AccountSettingsEvent.currentConsumerUpdated(consumer));
      },
    );
  }
  // Apis

  // Repositories
  final ConsumerRepository _consumerRepository;
  final AuthRepository _authRepository;

  // Subscriptions
  StreamSubscription<Consumer?>? _consumerSubscription;

  // Cancel Subscriptions
  @override
  Future<void> close() {
    _consumerSubscription?.cancel();
    return super.close();
  }

  // Events
  Future<void> _onAccountSettingsEvent(
    AccountSettingsEvent event,
    Emitter<AccountSettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      currentConsumerUpdated: (e) async {
        emit(state.copyWith(currentConsumer: e.updatedConsumer));
      },
      updateAvatarImage: (e) async {
        final tryReauthFailure = await _tryReauth(e.currentPassword);
        if (tryReauthFailure != null) {
          emit(state.copyWith(failure: tryReauthFailure));
          return;
        }
        final tryUpdate = await _consumerRepository.updateAvatarImage(
          avatarImages: e.newAvatarImages,
        );
        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (consumer) => emit(state.copyWith(isValueUpdated: true)),
        );
      },
      updateFullName: (e) async {
        final tryReauthFailure = await _tryReauth(e.currentPassword);
        if (tryReauthFailure != null) {
          emit(state.copyWith(failure: tryReauthFailure));
          return;
        }
        final tryUpdateFullname = await _consumerRepository.updateFullName(
          firstNameObject: e.firstNameObject,
          lastNameObject: e.lastNameObject,
        );
        tryUpdateFullname.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => emit(state.copyWith(isValueUpdated: true)),
        );
      },
      updateEmail: (e) async {
        final tryReauthFailure = await _tryReauth(e.currentPassword);
        if (tryReauthFailure != null) {
          emit(state.copyWith(failure: tryReauthFailure));
          return;
        }
        final tryUpdate = await _authRepository.sendEmailUpdateVerification(
          emailObject: e.emailObject,
        );

        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          // todo
          // Display done message to user
          // "A verification email has been sent to ${e.emailObject.value}"
          // If the email is not registered before.
          (consumer) => emit(state.copyWith(isValueUpdated: true)),
        );
      },
      updatePassword: (e) async {
        final tryReauthFailure = await _tryReauth(e.currentPassword);
        if (tryReauthFailure != null) {
          emit(state.copyWith(failure: tryReauthFailure));
          return;
        }
        final tryUpdate = await _authRepository.updatePassword(
          newPassword: e.newPassword,
          confirmedPassword: e.confirmedNewPassword,
        );
        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => emit(state.copyWith(isValueUpdated: true)),
        );
      },
    );

    emit(
      state.copyWith(isLoading: false, failure: null, isValueUpdated: false),
    );
  }

  Future<Failure?> _tryReauth(Password currentPassword) async {
    final tryReAuth = await _authRepository.reAuthenticateEmailAndPassword(
      currentPassword: currentPassword,
    );
    return tryReAuth.getLeft().toNullable();
  }
}
