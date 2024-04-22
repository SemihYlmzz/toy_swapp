import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'create_toy_bloc.freezed.dart';
part 'create_toy_event.dart';
part 'create_toy_state.dart';

class CreateToyBloc extends Bloc<CreateToyEvent, CreateToyState> {
  CreateToyBloc() : super(const CreateToyState()) {
    on<CreateToyEvent>(_onCreateToyEvent);
  }

  Future<void> _onCreateToyEvent(
    CreateToyEvent event,
    Emitter<CreateToyState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {},
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
