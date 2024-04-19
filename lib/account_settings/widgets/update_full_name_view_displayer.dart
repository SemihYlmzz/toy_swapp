import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdateFullNameViewDisplayer extends StatelessWidget {
  const UpdateFullNameViewDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumer = context.select(
      (AccountSettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return ListTile(
      title: const Text('Update Full Name'),
      trailing: Container(
        constraints: const BoxConstraints(
          maxWidth: 120,
        ),
        child: Text(
          '${currentConsumer.firstName} ${currentConsumer.lastName}',
          textAlign: TextAlign.center,
        ),
      ),
      onTap: () => context.read<AccountSettingsCubit>().updateViewState(
            AccountSettingsViewState.updateFullName,
          ),
    );
  }
}
