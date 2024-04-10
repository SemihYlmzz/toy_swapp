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
                  const AccountRegisterationAvatarSelector(),
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class AccountRegisterationAvatarSelector extends StatelessWidget {
  const AccountRegisterationAvatarSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final avatarImage = context.select(
      (AccountRegistrationCubit cubit) => cubit.state.avatarImage,
    );
    return GestureDetector(
      onTap: () {
        context.read<AccountRegistrationCubit>().updateAvatarFromPhotos();
      },
      child: Container(
        width: 128,
        height: 128,
        decoration: BoxDecoration(
          color: Colors.white10,
          shape: BoxShape.circle,
          image: avatarImage == null
              ? null
              : DecorationImage(
                  image: ResizeImage(
                    MemoryImage(avatarImage),
                    width: 128,
                    height: 128,
                  ),
                  fit: BoxFit.cover,
                ),
        ),
      ),
    );
  }
}
