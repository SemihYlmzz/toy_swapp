import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import '../../app/app.dart';
import '../sign_in.dart';

class SignInEmailTextField extends StatelessWidget {
  const SignInEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.select(
      (AppBloc bloc) => bloc.state.appPreferences.languageCode,
    );
    return GradientTextField(
      hintText: context.signInLocalization.email,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        context.read<SignInBloc>().add(SignInEvent.changeEmail(email: value));
      },
      onSubmitted: (value) {
        context.read<SignInBloc>().state.passwordFocusNode.requestFocus();
      },
    );
  }
}
