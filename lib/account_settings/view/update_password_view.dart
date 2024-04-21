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

    return const BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SharedGap.gap20,
            Text.rich(
              textAlign: TextAlign.start,
              TextSpan(
                text: 'Enter Your Password',
                style: TextStyle(
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                    text: ' *',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            SharedGap.gap12,
            ToySwappTextField(
              labelText: 'Password',
            ),
            SharedGap.gap12,
            ToySwappTextField(
              labelText: 'New Password',
            ),
            SharedGap.gap12,
            ToySwappTextField(
              labelText: 'New Password',
            ),
          ],
        ),
      ],
    );
  }
}
