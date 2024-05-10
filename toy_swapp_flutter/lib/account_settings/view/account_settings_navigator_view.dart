import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_settings.dart';

class AccountSettingsNavigatorView extends StatelessWidget {
  const AccountSettingsNavigatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            UpdateAvatarViewDisplayer(),
            UpdateFullNameViewDisplayer(),
            UpdateEmailViewDisplayer(),
            UpdatePasswordViewDisplayer(),
          ],
        ),
        TextButton(
          onPressed: () => context.read<AccountSettingsCubit>().updateViewState(
                AccountSettingsViewState.deleteAccount,
              ),
          child: Text(
            'Delete Account',
            style: TextStyle(
              color: Theme.of(context).colorScheme.error,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ],
    );
  }
}
