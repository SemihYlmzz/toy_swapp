import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_in.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScaffold(
      appBar: SignInAppBar(),
      body: Padding(
        padding: SharedPaddings.all12,
        child: BaseColumn(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInEmailTextField(),
            SharedGap.gap16,
            SignInPasswordTextField(),
            SharedGap.gap16,
            SignInButton(),
            SignInToSignUpNavigator(),
            SignInToForgotPasswordNavigator(),
          ],
        ),
      ),
    );
  }
}
