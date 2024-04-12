import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'navigator_bar_bloc.freezed.dart';
part 'navigator_bar_event.dart';
part 'navigator_bar_state.dart';

class NavigatorBarBloc extends Bloc<NavigatorBarEvent, NavigatorBarState> {
  NavigatorBarBloc() : super(const NavigatorBarState()) {
    on<NavigatorBarEvent>(_onNavigatorBarEvent);
  }

  Future<void> _onNavigatorBarEvent(
    NavigatorBarEvent event,
    Emitter<NavigatorBarState> emit,
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
