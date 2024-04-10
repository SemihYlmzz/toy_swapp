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
                  const AccountRegistrationLocationPicker(),
                ],
              ),
            ),
            GradientButton(
              text: 'Register',
              onPressed: () {
                final state = context.read<AccountRegistrationCubit>().state;
                final location = state.location;
                final avatar1024 = state.avatar1024;
                final avatar128 = state.avatar128;
                final avatar256 = state.avatar256;
                final avatar512 = state.avatar512;
                // Check Firstname and Lastname
                if (avatar1024 == null ||
                    avatar128 == null ||
                    avatar256 == null ||
                    avatar512 == null ||
                    location == null) {
                  return;
                }
                // Compress Images

                context.read<AccountRegistrationBloc>().add(
                      AccountRegistrationEvent.registerAccount(
                        avatarImage1024: avatar1024,
                        avatarImage128: avatar128,
                        avatarImage256: avatar256,
                        avatarImage512: avatar512,
                        firstName: state.firstName,
                        lastName: state.lastName,
                        latitude: location.latitude,
                        longitude: location.longitude,
                      ),
                    );
              },
            ),
          ],
        ),
      ),
    );
  }
}
