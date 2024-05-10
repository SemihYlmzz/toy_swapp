import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class BackAndSaveButtons extends StatelessWidget {
  const BackAndSaveButtons({
    this.onTap,
    super.key,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    final currentPassword = context.select(
      (AccountSettingsCubit bloc) => bloc.state.currentPassword,
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              context.read<AccountSettingsCubit>().updateViewState(
                    AccountSettingsViewState.navigation,
                  );
            },
            child: Ink(
              height: 40,
              color: Colors.redAccent.withOpacity(0.5),
              child: Icon(Icons.adaptive.arrow_back),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: currentPassword.isValid ? onTap : null,
            child: Ink(
              height: 40,
              color: currentPassword.isValid
                  ? Colors.greenAccent.withOpacity(0.5)
                  : Colors.white10,
              child: const Icon(Icons.done),
            ),
          ),
        ),
      ],
    );
  }
}
