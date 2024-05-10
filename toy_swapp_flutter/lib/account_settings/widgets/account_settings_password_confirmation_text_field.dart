import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';
import 'package:toy_swapp/app/app.dart';

class AccountSettingsPasswordConfirmationTextField extends StatelessWidget {
  const AccountSettingsPasswordConfirmationTextField({
    required this.isVisible,
    super.key,
  });
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Animate(
        effects: const [
          FadeEffect(),
          MoveEffect(
            begin: Offset(0, -25),
          ),
        ],
        child: Column(
          children: [
            const Text(
              'To ensure your account security,\n'
              'please enter your current password.',
              textAlign: TextAlign.center,
            ),
            SharedGap.gap16,
            ToySwappTextField(
              labelText: 'Current Password',
              obscureText: true,
              onChanged: (value) {
                context.read<AccountSettingsCubit>().updatePassword(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
