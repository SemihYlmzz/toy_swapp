import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdateAvatarView extends StatelessWidget {
  const UpdateAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedAvatar = context.select(
      (AccountSettingsCubit bloc) => bloc.state.selectedAvatar,
    );
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          height: 200,
          margin: SharedPaddings.top32,
          decoration: BoxDecoration(
            border: Border.all(
              color: selectedAvatar == null
                  ? Theme.of(context).colorScheme.primary
                  : Colors.greenAccent,
              width: 2,
            ),
            shape: BoxShape.circle,
            image: selectedAvatar == null
                ? const DecorationImage(
                    image: NetworkImage('https://picsum.photos/257/257'),
                    fit: BoxFit.fill,
                  )
                : DecorationImage(
                    image: MemoryImage(selectedAvatar),
                    fit: BoxFit.cover,
                  ),
          ),
        ),
        Column(
          children: [
            AccountSettingsPasswordConfirmationTextField(
              isVisible: selectedAvatar != null,
            ),
            SharedGap.gap8,
            BackAndSaveButtons(
              onTap: selectedAvatar == null
                  ? null
                  : () {
                      context.read<AccountSettingsCubit>().updateViewState(
                            AccountSettingsViewState.navigation,
                          );
                    },
            ),
          ],
        ),
      ],
    );
  }
}
