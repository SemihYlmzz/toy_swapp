import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'permissions_bloc.freezed.dart';
part 'permissions_event.dart';
part 'permissions_state.dart';

class PermissionsBloc extends Bloc<PermissionsEvent, PermissionsState> {
  PermissionsBloc() : super(const PermissionsState()) {
    on<PermissionsEvent>(_onPermissionsEvent);
  }

  Future<void> _onPermissionsEvent(
    PermissionsEvent event,
    Emitter<PermissionsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {},
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
