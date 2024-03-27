import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import '../auth_sign_in.dart';

class AuthSignInView extends StatelessWidget {
  const AuthSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    context.select(
      (AppBloc bloc) => bloc.state.currentDevicePreferences!.language,
    );

    return const BaseScaffold(
      appBar: AuthSignInAppBar(),
      body: BaseColumn(
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
