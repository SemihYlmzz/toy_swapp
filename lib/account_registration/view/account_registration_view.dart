import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../account_registration.dart';

class AccountRegistrationView extends StatelessWidget {
  const AccountRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      appBar: const AccountRegistrationAppBar(),
      body: Padding(
        padding: SharedPaddings.all12,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: BaseColumn(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 128,
                    height: 128,
                    decoration: const BoxDecoration(
                      color: Colors.white10,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SharedGap.gap20,
                  GradientTextField(
                    hintText: 'First Name',
                    onChanged: (value) => context
                        .read<AccountRegistrationCubit>()
                        .updateFirstName(value),
                  ),
                  SharedGap.gap20,
                  GradientTextField(
                    hintText: 'Last Name',
                    onChanged: (value) => context
                        .read<AccountRegistrationCubit>()
                        .updateLastName(value),
                  ),
                  SharedGap.gap20,
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (value) {}),
                      const Text('Give location permission.'),
                    ],
                  ),
                ],
              ),
            ),
            GradientButton(
              text: 'Register',
              onPressed: () {
                final state = context.read<AccountRegistrationCubit>().state;
              },
            ),
          ],
        ),
      ),
    );
  }
}
