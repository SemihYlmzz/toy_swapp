import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_settings.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({super.key});

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
          child: const Text('Password Back'),
        ),
      ],
    );
  }
}
