import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'account_settings_bloc.freezed.dart';
part 'account_settings_event.dart';
part 'account_settings_state.dart';

class AccountSettingsBloc
    extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  AccountSettingsBloc() : super(const AccountSettingsState()) {
    on<AccountSettingsEvent>(_onAccountSettingsEvent);
  }

  Future<void> _onAccountSettingsEvent(
    AccountSettingsEvent event,
    Emitter<AccountSettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {},
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
