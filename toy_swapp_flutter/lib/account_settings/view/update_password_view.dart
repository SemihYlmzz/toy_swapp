import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';

import '../account_settings.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    //context.read<AccountSettingsCubit>().updateViewState(
    //      AccountSettingsViewState.navigation,
    //    );
    final contextTheme = Theme.of(context);
    final cubitState = context.watch<AccountSettingsCubit>().state;

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
                text: 'Enter Your New Password',
                style: const TextStyle(
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                    text: ' *',
                    style: contextTheme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            SharedGap.gap12,
            ToySwappTextField(
              obscureText: true,
              labelText: 'New Password',
              onChanged: context.read<AccountSettingsCubit>().updateNewPassword,
            ),
            SharedGap.gap12,
            ToySwappTextField(
              obscureText: true,
              labelText: 'Confirm New Password',
              onChanged: context
                  .read<AccountSettingsCubit>()
                  .updateNewConfirmedPassword,
            ),
          ],
        ),
        AccountSettingsPasswordConfirmationTextField(
          isVisible: cubitState.newPassword.isValid &&
              cubitState.confirmedPassword.isValid,
        ),
        BackAndSaveButtons(
          onTap: () {
            if (cubitState.newPassword.isNotValid) {
              return;
            }
            if (cubitState.confirmedPassword.isNotValid) {
              return;
            }
            if (cubitState.currentPassword.isNotValid) {
              return;
            }
            context.read<AccountSettingsBloc>().add(
                  AccountSettingsEvent.updatePassword(
                    currentPassword: cubitState.currentPassword,
                    newPassword: cubitState.newPassword,
                    confirmedNewPassword: cubitState.confirmedPassword,
                  ),
                );
          },
        ),
      ],
    );
  }
}
