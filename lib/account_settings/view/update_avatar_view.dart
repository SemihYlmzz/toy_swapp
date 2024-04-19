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
      (AccountSettingsCubit bloc) =>
          bloc.state.newAvatarImages?.value?.avatarImage512,
    );
    final currentConsumerAvatarUrl512 = context.select(
      (AccountSettingsBloc bloc) =>
          bloc.state.currentConsumer.avatarUrls.url512,
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
                ? DecorationImage(
                    image: NetworkImage(currentConsumerAvatarUrl512),
                    fit: BoxFit.cover,
                  )
                : DecorationImage(
                    image: ResizeImage(
                      width: 512,
                      MemoryImage(selectedAvatar),
                    ),
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
                      final cubitState =
                          context.read<AccountSettingsCubit>().state;

                      final currentPassword = cubitState.currentPassword;
                      if (cubitState.currentPassword.isNotValid) {
                        return;
                      }
                      final newAvatarImages = cubitState.newAvatarImages;
                      if (newAvatarImages == null) {
                        return;
                      }
                      if (newAvatarImages.isNotValid) {
                        return;
                      }
                      context.read<AccountSettingsBloc>().add(
                            AccountSettingsEvent.updateAvatarImage(
                              newAvatarImages: newAvatarImages,
                              currentPassword: currentPassword,
                            ),
                          );
                    },
            ),
          ],
        ),
      ],
    );
  }
}
