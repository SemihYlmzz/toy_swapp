import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:support_repository/support_repository.dart';
import '../../errors/errors.dart';

part 'account_initializer_bloc.freezed.dart';
part 'account_initializer_event.dart';
part 'account_initializer_state.dart';

class AccountInitializerBloc
    extends Bloc<AccountInitializerEvent, AccountInitializerState> {
  AccountInitializerBloc({
    required ConsumerRepository consumerRepository,
    required SupportRepository supportRepository,
    required AuthRepository authRepository,
  })  : _consumerRepository = consumerRepository,
        _supportRepository = supportRepository,
        _authRepository = authRepository,
        super(
          AccountInitializerState(currentAuth: authRepository.currentAuth),
        ) {
    on<AccountInitializerEvent>(_onAccountInitializerEvent);
  }
  // Repositories
  final ConsumerRepository _consumerRepository;
  final SupportRepository _supportRepository;
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
        final tryReadConsumer =
            await _consumerRepository.initCurrentConsumerWithAuthID(
          authId: state.currentAuth.id,
        );
        final readConsumerFailure = tryReadConsumer.getLeft().toNullable();
        if (readConsumerFailure != null) {
          emit(state.copyWith(fetchAccountDataFailure: readConsumerFailure));
          return;
        }
        final readedConsumer = tryReadConsumer.getRight().toNullable();
        if (readedConsumer != null) {
          _consumerRepository.sinkCurrentConsumer(readedConsumer);
          return;
        }
        final tryReadSupport =
            await _supportRepository.initCurrentSupportWithAuthID(
          authId: state.currentAuth.id,
        );
        final readSupportFailure = tryReadSupport.getLeft().toNullable();
        if (readSupportFailure != null) {
          emit(state.copyWith(fetchAccountDataFailure: readSupportFailure));
          return;
        }
        final readedSupport = tryReadSupport.getRight().toNullable();
        if (readedSupport != null) {
          return;
        }

        emit(state.copyWith(consumerNeedsCreation: true));
      },
      signOut: (e) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold((l) => emit(state.copyWith(failure: l)), (r) => null);
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
