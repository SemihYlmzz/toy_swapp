import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'email_verification_bloc.freezed.dart';
part 'email_verification_event.dart';
part 'email_verification_state.dart';

class EmailVerificationBloc extends Bloc<EmailVerificationEvent, EmailVerificationState> {
  EmailVerificationBloc() : super(const EmailVerificationState()) {
    on<EmailVerificationEvent>(_onEmailVerificationEvent);
  }
  
  Future<void> _onEmailVerificationEvent(
    EmailVerificationEvent event,
    Emitter<EmailVerificationState> emit,
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
