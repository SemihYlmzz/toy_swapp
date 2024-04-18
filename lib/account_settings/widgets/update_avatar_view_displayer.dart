import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdateAvatarViewDisplayer extends StatelessWidget {
  const UpdateAvatarViewDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentConsumerAvatarUrl128 = context.select(
      (AccountSettingsBloc bloc) =>
          bloc.state.currentConsumer.avatarUrls.url128,
    );
    return ListTile(
      title: const Text('Update Avatar'),
      trailing: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).primaryColor,
          ),
          image: DecorationImage(
            image: NetworkImage(currentConsumerAvatarUrl128),
            fit: BoxFit.cover,
          ),
        ),
      ),
      onTap: () => context.read<AccountSettingsCubit>().updateViewState(
            AccountSettingsViewState.updateAvatar,
          ),
    );
  }
}
