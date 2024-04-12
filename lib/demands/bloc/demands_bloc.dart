import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'demands_bloc.freezed.dart';
part 'demands_event.dart';
part 'demands_state.dart';

class DemandsBloc extends Bloc<DemandsEvent, DemandsState> {
  DemandsBloc() : super(const DemandsState()) {
    on<DemandsEvent>(_onDemandsEvent);
  }

  Future<void> _onDemandsEvent(
    DemandsEvent event,
    Emitter<DemandsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {
        // print('Fetching data...');
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
