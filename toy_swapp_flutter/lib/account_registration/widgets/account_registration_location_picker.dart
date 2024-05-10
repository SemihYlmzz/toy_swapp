import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../account_registration.dart';

class AccountRegistrationLocationPicker extends StatelessWidget {
  const AccountRegistrationLocationPicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final location = context.select(
      (AccountRegistrationCubit bloc) => bloc.state.location,
    );
    return Row(
      children: [
        Checkbox(
          value: location != null,
          onChanged: (value) {
            context.read<AccountRegistrationCubit>().updateLocation();
          },
        ),
        const Text('Give location permission.'),
      ],
    );
  }
}
