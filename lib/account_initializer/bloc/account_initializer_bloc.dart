import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'account_initializer_bloc.freezed.dart';
part 'account_initializer_event.dart';
part 'account_initializer_state.dart';

class AccountInitializerBloc
    extends Bloc<AccountInitializerEvent, AccountInitializerState> {
  AccountInitializerBloc() : super(const AccountInitializerState()) {
    on<AccountInitializerEvent>(_onAccountInitializerEvent);
  }

  Future<void> _onAccountInitializerEvent(
    AccountInitializerEvent event,
    Emitter<AccountInitializerState> emit,
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
