import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class UpdateAvatarView extends StatelessWidget {
  const UpdateAvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: SharedPaddings.all32,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: SharedBorderRadius.circular32,
          ),
          child: Column(
            children: [
              Text(
                'Current Avatar',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SharedGap.gap32,
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/257/257',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              ),
              onPressed: () {
                context.read<AccountSettingsCubit>().updateViewState(
                      AccountSettingsViewState.navigation,
                    );
              },
              child: const Text('Back'),
            ),
            // selectedImage == null
            //     ? SelectAvatarImageButton()
            //     : ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: Colors.greenAccent,
            //         ),
            //         onPressed: () {
            //           context.read<AccountSettingsCubit>().updateViewState(
            //                 AccountSettingsViewState.navigation,
            //               );
            //         },
            //         child: const Text('Save'),
            //       ),
          ],
        ),
      ],
    );
  }
}

class SelectAvatarImageButton extends StatelessWidget {
  const SelectAvatarImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
