import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';
import 'package:toy_swapp/app/app.dart';

class UpdateUsernameView extends StatelessWidget {
  const UpdateUsernameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          children: [
            SharedGap.gap32,
            ToySwappTextField(
              labelText: 'Semih',
            ),
            SharedGap.gap20,
            ToySwappTextField(
              labelText: 'Yılmaz',
            ),
          ],
        ),
        Row(
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
                  color: Colors.redAccent.withOpacity(0.1),
                  child: Icon(Icons.adaptive.arrow_back),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: false
                    ? null
                    : () {
                        context.read<AccountSettingsCubit>().updateViewState(
                              AccountSettingsViewState.navigation,
                            );
                      },
                child: Ink(
                  height: 40,
                  color: true
                      ? Colors.white10
                      : Colors.greenAccent.withOpacity(0.1),
                  child: const Icon(Icons.done),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
