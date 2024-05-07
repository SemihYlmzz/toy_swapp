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
        _authRepository = authRepository,
        super(
          AccountInitializerState(currentAuth: authRepository.currentAuth),
        ) {
    on<AccountInitializerEvent>(_onAccountInitializerEvent);
  }
  // Repositories
  final ConsumerRepository _consumerRepository;
  final AuthRepository _authRepository;

  // Events
  Future<void> _onAccountInitializerEvent(
    AccountInitializerEvent event,
    Emitter<AccountInitializerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await event.map(
      fetchAccountData: (e) async {
        emit(state.copyWith(fetchAccountDataFailure: null));
        final tryRead = await _consumerRepository.initCurrentConsumer(
          authId: state.currentAuth.id,
        );
        tryRead.fold(
          (l) => emit(state.copyWith(fetchAccountDataFailure: l)),
          (readedConsumer) {
            if (readedConsumer != null) {
              _consumerRepository.sinkCurrentConsumer(readedConsumer);
              return;
            }
            emit(state.copyWith(consumerNeedsCreation: true));
          },
        );
      },
      signOut: (e) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold((l) => emit(state.copyWith(failure: l)), (r) => null);
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
