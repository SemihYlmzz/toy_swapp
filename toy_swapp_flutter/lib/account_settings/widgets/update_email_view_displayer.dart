import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdateEmailViewDisplayer extends StatelessWidget {
  const UpdateEmailViewDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Update Email'),
      trailing: const Text('ekkotaym@gmail.com'),
      onTap: () => context.read<AccountSettingsCubit>().updateViewState(
            AccountSettingsViewState.updateEmail,
          ),
    );
  }
}
