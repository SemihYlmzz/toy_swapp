import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';
import '../sign_in.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    context.select(
      (AppBloc bloc) => bloc.state.currentUserPreferences!.language,
    );

    return const BaseScaffold(
      appBar: SignInAppBar(),
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
