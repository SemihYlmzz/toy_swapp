import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';

import '../account_settings.dart';

class UpdateEmailView extends StatelessWidget {
  const UpdateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    final newEmail = context.select(
      (AccountSettingsCubit bloc) => bloc.state.emailObject,
    );
    final currentEmail =
        context.read<AccountSettingsBloc>().state.currentConsumer.email;
    final contextTheme = Theme.of(context);
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharedGap.gap20,
            Text.rich(
              textAlign: TextAlign.start,
              TextSpan(
                text: 'Enter New Email',
                style: contextTheme.textTheme.labelLarge,
                children: [
                  TextSpan(
                    text: ' *',
                    style: contextTheme.textTheme.labelLarge?.copyWith(
                      color: contextTheme.colorScheme.error,
                    ),
                  ),
                ],
              ),
            ),
            SharedGap.gap4,
            ToySwappTextField(
              labelText: currentEmail,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                context.read<AccountSettingsCubit>().updateEmail(value);
              },
            ),
            SharedGap.gap20,
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                style: contextTheme.textTheme.labelLarge?.copyWith(
                  color: contextTheme.colorScheme.onBackground.withOpacity(0.4),
                ),
                children: [
                  const TextSpan(
                    text: 'After email verified you need to ',
                  ),
                  TextSpan(
                    text: 'Sign out ',
                    style: TextStyle(
                      color: contextTheme.colorScheme.primary.withOpacity(0.7),
                    ),
                  ),
                  const TextSpan(
                    text: 'and ',
                  ),
                  TextSpan(
                    text: 'Sign in',
                    style: TextStyle(
                      color: contextTheme.colorScheme.primary.withOpacity(0.7),
                    ),
                  ),
                  const TextSpan(
                    text: '.\n',
                  ),
                  const TextSpan(
                    text: 'If you do not, your in-app actions will throw an ',
                  ),
                  TextSpan(
                    text: 'Error',
                    style: TextStyle(
                      color: contextTheme.colorScheme.error,
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                  ),
                ],
              ),
            ),
            SharedGap.gap20,
          ],
        ),
        Column(
          children: [
            AccountSettingsPasswordConfirmationTextField(
              isVisible: newEmail.isValid,
            ),
            SharedGap.gap8,
            BackAndSaveButtons(
              onTap: () {
                final cubitState = context.read<AccountSettingsCubit>().state;
                final emailObject = cubitState.emailObject;
                final currentPasswordObject = cubitState.currentPassword;
                if (currentPasswordObject.isNotValid ||
                    emailObject.isNotValid) {
                  return;
                }
                context.read<AccountSettingsBloc>().add(
                      AccountSettingsEvent.updateEmail(
                        emailObject: emailObject,
                        currentPassword: currentPasswordObject,
                      ),
                    );
              },
            ),
          ],
        ),
      ],
    );
  }
}
