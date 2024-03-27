import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_sign_in.dart';

class AuthSignInView extends StatelessWidget {
  const AuthSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    context.select(
      (AppBloc bloc) => bloc.state.currentDevicePreferences!.language,
    );

    return BaseScaffold(
      appBar: const AuthSignInAppBar(),
      body: const BaseColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SignInEmailTextField(),
          SignInPasswordTextField(),
          ForgotPasswordNavigationButton(),
          SignUpNavigationButton(),
          SignInButton(),
          SignInWithGoogleButton(),
          // SignInWithAppleButton(),
        ],
      ),
    );
  }
}
