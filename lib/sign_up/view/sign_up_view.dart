import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../sign_up.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: const SignUpAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GradientTextField(
            hintText: 'E-Mail',
            onChanged: (v) => context.read<SignUpCubit>().updateEmail(v),
          ),
          SharedGap.gap16,
          GradientTextField(
            hintText: 'Password',
            obscureText: true,
            onChanged: (v) => context.read<SignUpCubit>().updatePassword(v),
          ),
          SharedGap.gap16,
          GradientTextField(
            hintText: 'Confirm Password',
            obscureText: true,
            onChanged: (v) =>
                context.read<SignUpCubit>().updateConfirmPassword(v),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<SignUpBloc>().add(
                    SignUpEvent.createUserWithEmailAndPassword(
                      email: context.read<SignUpCubit>().state.email,
                      password: context.read<SignUpCubit>().state.password,
                      confirmPassword:
                          context.read<SignUpCubit>().state.confirmPassword,
                    ),
                  );
            },
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
