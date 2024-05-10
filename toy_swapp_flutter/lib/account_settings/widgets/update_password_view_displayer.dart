import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdatePasswordViewDisplayer extends StatelessWidget {
  const UpdatePasswordViewDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Update Password'),
      trailing: const Text('*********'),
      onTap: () => context.read<AccountSettingsCubit>().updateViewState(
            AccountSettingsViewState.updatePassword,
          ),
    );
  }
}
