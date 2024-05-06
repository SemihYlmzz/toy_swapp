import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'create_toy_bloc.freezed.dart';
part 'create_toy_event.dart';
part 'create_toy_state.dart';

class CreateToyBloc extends Bloc<CreateToyEvent, CreateToyState> {
  CreateToyBloc({
    required ToyRepository toyRepository,
    required ConsumerRepository consumerRepository,
    required AuthRepository authRepository,
  })  : _toyRepository = toyRepository,
        _consumerRepository = consumerRepository,
        super(CreateToyState(currentAuth: authRepository.currentAuth)) {
    on<CreateToyEvent>(_onCreateToyEvent);
  }

  // Repositories
  final ToyRepository _toyRepository;
  final ConsumerRepository _consumerRepository;

  Future<void> _onCreateToyEvent(
    CreateToyEvent event,
    Emitter<CreateToyState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      createOwnedToy: (e) async {
        if (state.currentAuth == Auth.empty()) {
          return;
        }
        final tryCreate = await _toyRepository.create(
          ownerConsumerAuthID: state.currentAuth.id,
          toyName: e.toyName,
          toyDescription: e.toyDescription,
          toyImageList: e.imageUrlList,
          toyAge: e.toyAge,
          toyGender: e.toyGender,
          toyCondition: e.toyCondition,
        );

        tryCreate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (newValues) {
            _consumerRepository.sinkCurrentConsumer(
              consumer: newValues.updatedConsumer,
            );
            _toyRepository.sinkAddOwnedToy(newValues.createdToy);
            emit(state.copyWith(isToyCreated: true));
          },
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
