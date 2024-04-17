import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class AccountSettingsNavigatorView extends StatelessWidget {
  const AccountSettingsNavigatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            ListTile(
              title: const Text('Update Avatar'),
              trailing: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/128/128',
                    ),
                  ),
                ),
              ),
              onTap: () => context.read<AccountSettingsCubit>().updateViewState(
                    AccountSettingsViewState.updateAvatar,
                  ),
            ),
            ListTile(
              title: const Text('Update Username'),
              trailing: const Text('Semih Yılmaz'),
              onTap: () => context.read<AccountSettingsCubit>().updateViewState(
                    AccountSettingsViewState.updateUsername,
                  ),
            ),
            ListTile(
              title: const Text('Update Email'),
              trailing: const Text('ekkotaym@gmail.com'),
              onTap: () => context.read<AccountSettingsCubit>().updateViewState(
                    AccountSettingsViewState.updateEmail,
                  ),
            ),
            ListTile(
              title: const Text('Update Password'),
              trailing: const Text('*********'),
              onTap: () => context.read<AccountSettingsCubit>().updateViewState(
                    AccountSettingsViewState.updatePassword,
                  ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () => context.read<AccountSettingsCubit>().updateViewState(
                AccountSettingsViewState.deleteAccount,
              ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
          child: const Text('Delete Account'),
        ),
      ],
    );
  }
}
