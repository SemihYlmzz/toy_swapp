import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_sign_in_bloc.freezed.dart';
part 'auth_sign_in_event.dart';
part 'auth_sign_in_state.dart';

class AuthSignInBloc extends Bloc<AuthSignInEvent, AuthSignInState> {
  AuthSignInBloc() : super(const AuthSignInState()) {
    on<AuthSignInEvent>(_onAuthSignInEvent);
  }
  
  Future<void> _onAuthSignInEvent(
    AuthSignInEvent event,
    Emitter<AuthSignInState> emit,
    ) async {
    emit(state.copyWith(isLoading: true));
    
    switch (event) {
      case AuthSignInFetch():
        break;
    }
    
    emit(state.copyWith(isLoading: false, errorMessage: null));
  }
}
