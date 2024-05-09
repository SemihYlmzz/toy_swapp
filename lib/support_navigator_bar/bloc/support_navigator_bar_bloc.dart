import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'support_navigator_bar_bloc.freezed.dart';
part 'support_navigator_bar_event.dart';
part 'support_navigator_bar_state.dart';

class SupportNavigatorBarBloc
    extends Bloc<SupportNavigatorBarEvent, SupportNavigatorBarState> {
  SupportNavigatorBarBloc() : super(const SupportNavigatorBarState()) {
    on<SupportNavigatorBarEvent>(_onSupportNavigatorBarEvent);
  }

  Future<void> _onSupportNavigatorBarEvent(
    SupportNavigatorBarEvent event,
    Emitter<SupportNavigatorBarState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {},
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
