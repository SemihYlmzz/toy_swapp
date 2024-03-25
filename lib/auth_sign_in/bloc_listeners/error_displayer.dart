import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_sign_in.dart';

extension AuthSignInErrorDisplayer on AuthSignInBlocListeners {
  BlocListener<AuthSignInBloc, AuthSignInState> errorDisplayer() {
    return BlocListener(
      listener: (context, state) {
        final errorMessage = state.errorMessage;
        if (errorMessage == null) {
          return;
        }
        print('Error: $errorMessage');
        // ErrorSnackbars.showSnackBar(context, errorMessage);
      },
    );
  }
}
