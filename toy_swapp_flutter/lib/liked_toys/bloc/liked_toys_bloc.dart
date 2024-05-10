import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'liked_toys_bloc.freezed.dart';
part 'liked_toys_event.dart';
part 'liked_toys_state.dart';

class LikedToysBloc extends Bloc<LikedToysEvent, LikedToysState> {
  LikedToysBloc() : super(const LikedToysState()) {
    on<LikedToysEvent>(_onLikedToysEvent);
  }

  Future<void> _onLikedToysEvent(
    LikedToysEvent event,
    Emitter<LikedToysState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {},
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
