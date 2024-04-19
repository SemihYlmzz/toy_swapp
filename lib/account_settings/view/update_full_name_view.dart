import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_settings/account_settings.dart';
import 'package:toy_swapp/app/app.dart';

class UpdateFullNameView extends StatelessWidget {
  const UpdateFullNameView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubitState = context.select(
      (AccountSettingsCubit bloc) => bloc.state,
    );
    final currentConsumer = context.select(
      (AccountSettingsBloc bloc) => bloc.state.currentConsumer,
    );
    return BaseColumn(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            SharedGap.gap32,
            ToySwappTextField(
              labelText: currentConsumer.firstName,
              textCapitalization: TextCapitalization.words,
              onChanged: (updatedFirstNameValue) {
                context.read<AccountSettingsCubit>().updateFirstName(
                      updatedFirstNameValue,
                      currentConsumer.firstName,
                    );
              },
              onSubmit: (v) => cubitState.lastNameFocusNode.requestFocus(),
            ),
            SharedGap.gap20,
            ToySwappTextField(
              labelText: currentConsumer.lastName,
              focusNode: cubitState.lastNameFocusNode,
              textCapitalization: TextCapitalization.words,
              onChanged: (updatedLastNameValue) {
                context.read<AccountSettingsCubit>().updateLastName(
                      updatedLastNameValue,
                      currentConsumer.lastName,
                    );
              },
            ),
          ],
        ),
        Column(
          children: [
            AccountSettingsPasswordConfirmationTextField(
              isVisible: cubitState.firstNameObject.isValid ||
                  cubitState.lastNameObject.isValid,
            ),
            SharedGap.gap8,
            BackAndSaveButtons(
              onTap: cubitState.currentPassword.isNotValid
                  ? null
                  : () {
                      context.read<AccountSettingsBloc>().add(
                            AccountSettingsEvent.updateFullName(
                              firstNameObject: cubitState.firstNameObject,
                              lastNameObject: cubitState.lastNameObject,
                              currentPassword: cubitState.currentPassword,
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
