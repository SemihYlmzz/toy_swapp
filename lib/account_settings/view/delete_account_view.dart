import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<AccountSettingsCubit>().updateViewState(
                  AccountSettingsViewState.navigation,
                );
          },
          child: const Text('Delete Account Back'),
        ),
      ],
    );
  }
}
