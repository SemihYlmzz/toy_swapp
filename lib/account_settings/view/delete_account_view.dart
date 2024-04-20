import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SharedGap.gap8,
            Text(
              'Warning!',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
            SharedGap.gap8,
            Container(
              width: 320,
              padding: SharedPaddings.all20,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.error.withOpacity(0.1),
                borderRadius: SharedBorderRadius.circular16,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\u2022 Once your account deleted, '
                    'it cannot be taken back.',
                  ),
                ],
              ),
            ),
            SharedGap.gap8,
            const Text(
              '\u2022 Before your account is deleted, '
              'your data will be stored for 30 days. ',
            ),
            SharedGap.gap8,
            const Text(
              '\u2022 Before 30 days, '
              'you can restore your account by logging in. ',
            ),
          ],
        ),
        const Column(
          children: [
            AccountSettingsPasswordConfirmationTextField(isVisible: true),
            SharedGap.gap8,
            BackAndSaveButtons(),
          ],
        ),
      ],
    );
  }
}
