part of 'liked_toys_bloc.dart';

@freezed
class LikedToysState with _$LikedToysState {
   const factory LikedToysState({
    @Default(false) bool isLoading,
    Failure? failure,
  }) = _LikedToysState;
}
