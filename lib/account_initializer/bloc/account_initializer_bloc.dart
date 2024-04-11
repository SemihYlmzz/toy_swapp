import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'account_initializer_bloc.freezed.dart';
part 'account_initializer_event.dart';
part 'account_initializer_state.dart';

class AccountInitializerBloc
    extends Bloc<AccountInitializerEvent, AccountInitializerState> {
  AccountInitializerBloc({
    required ConsumerRepository consumerRepository,
    required AuthRepository authRepository,
  })  : _consumerRepository = consumerRepository,
        super(
          AccountInitializerState(currentAuth: authRepository.currentAuth),
        ) {
    on<AccountInitializerEvent>(_onAccountInitializerEvent);
  }
  // Repositories
  final ConsumerRepository _consumerRepository;

  // Events
  Future<void> _onAccountInitializerEvent(
    AccountInitializerEvent event,
    Emitter<AccountInitializerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await Future<void>.delayed(const Duration(seconds: 60));
    await event.map(
      fetchConsumer: (e) async {
        final tryRead = await _consumerRepository.readConsumer(
          authId: state.currentAuth.id,
        );
        tryRead.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
