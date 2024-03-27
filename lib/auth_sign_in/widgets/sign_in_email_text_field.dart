import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../auth_sign_in.dart';


class SignInEmailTextField extends StatelessWidget {
  const SignInEmailTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    context.select(
      (AppBloc bloc) => bloc.state.currentDevicePreferences!.language,
    );
    return GradientTextField(
      hintText: context.l10n.email,
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) {
        context
            .read<AuthSignInBloc>()
            .add(AuthSignInEvent.changeEmail(email: value));
      },
      onSubmitted: (value) {
        context.read<AuthSignInBloc>().state.passwordFocusNode.requestFocus();
      },
    );
  }
}
