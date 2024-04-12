import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'sub_matches_bloc.freezed.dart';
part 'sub_matches_event.dart';
part 'sub_matches_state.dart';

class SubMatchesBloc extends Bloc<SubMatchesEvent, SubMatchesState> {
  SubMatchesBloc() : super(const SubMatchesState()) {
    on<SubMatchesEvent>(_onSubMatchesEvent);
  }

  Future<void> _onSubMatchesEvent(
    SubMatchesEvent event,
    Emitter<SubMatchesState> emit,
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
