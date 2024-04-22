import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import '../../errors/errors.dart';

part 'create_toy_bloc.freezed.dart';
part 'create_toy_event.dart';
part 'create_toy_state.dart';

class CreateToyBloc extends Bloc<CreateToyEvent, CreateToyState> {
  CreateToyBloc({
    required ToyRepository toyRepository,
    required AuthRepository authRepository,
  })  : _toyRepository = toyRepository,
        super(CreateToyState(currentAuth: authRepository.currentAuth)) {
    on<CreateToyEvent>(_onCreateToyEvent);
  }
  // Repositories
  final ToyRepository _toyRepository;

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
        final tryCreate = _toyRepository.create(
          ownerAuthId: state.currentAuth.id,
          name: e.name,
          description: e.description,
          toyImageList: e.imageUrlList,
          toyAge: e.toyAge,
          toyGender: e.toyGender,
          toyCondition: e.toyCondition,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
