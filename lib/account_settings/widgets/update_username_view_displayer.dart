import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';


class UpdateUsernameViewDisplayer extends StatelessWidget {
  const UpdateUsernameViewDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Update Username'),
      trailing: const Text('Semih Yılmaz'),
      onTap: () => context.read<AccountSettingsCubit>().updateViewState(
            AccountSettingsViewState.updateUsername,
          ),
    );
  }
}
