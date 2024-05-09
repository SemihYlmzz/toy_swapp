import 'package:auth_repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'support_navigator_bar_bloc.freezed.dart';
part 'support_navigator_bar_event.dart';
part 'support_navigator_bar_state.dart';

class SupportNavigatorBarBloc
    extends Bloc<SupportNavigatorBarEvent, SupportNavigatorBarState> {
  SupportNavigatorBarBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const SupportNavigatorBarState()) {
    on<SupportNavigatorBarEvent>(_onSupportNavigatorBarEvent);
  }
  final AuthRepository _authRepository;
  Future<void> _onSupportNavigatorBarEvent(
    SupportNavigatorBarEvent event,
    Emitter<SupportNavigatorBarState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      authSignOut: (e) async {
        final result = await _authRepository.signOut();
        result.fold(
          (l) => emit(state.copyWith(failure: l)),
          (r) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
