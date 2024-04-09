import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'account_registration_bloc.freezed.dart';
part 'account_registration_event.dart';
part 'account_registration_state.dart';

class AccountRegistrationBloc
    extends Bloc<AccountRegistrationEvent, AccountRegistrationState> {
  AccountRegistrationBloc() : super(const AccountRegistrationState()) {
    on<AccountRegistrationEvent>(_onAccountRegistrationEvent);
  }

  Future<void> _onAccountRegistrationEvent(
    AccountRegistrationEvent event,
    Emitter<AccountRegistrationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {
        print('Fetching data...');
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
