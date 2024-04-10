import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../account_registration.dart';

class AccountRegisterationAvatarSelector extends StatelessWidget {
  const AccountRegisterationAvatarSelector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final avatarImage = context.select(
      (AccountRegistrationCubit cubit) => cubit.state.avatar1024,
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
