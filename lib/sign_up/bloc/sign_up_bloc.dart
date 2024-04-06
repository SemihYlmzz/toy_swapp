import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(const SignUpState()) {
    on<SignUpEvent>(_onSignUpEvent);
  }

  Future<void> _onSignUpEvent(
    SignUpEvent event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      fetch: (e) async {
        print('Fetching data...');
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
