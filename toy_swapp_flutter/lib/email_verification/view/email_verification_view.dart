import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../email_verification.dart';

class EmailVerificationView extends StatelessWidget {
  const EmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EmailVerificationBloc>().state;
    return BaseScaffold(
      safeArea: true,
      appBar: const EmailVerificationAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Text(
            state.emailSendedDate == null
                ? 'You need to verify your email to continue.'
                : 'Email verification sent. Check your email.',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text('Sign Out'),
                onPressed: () {
                  context.read<EmailVerificationBloc>().add(
                        const EmailVerificationEvent.signOut(),
                      );
                },
              ),
              ElevatedButton(
                onPressed: state.emailSendedDate != null &&
                        state.emailSendedDate!
                            .add(SharedDurations.s30)
                            .isAfter(DateTime.now())
                    ? null
                    : () {
                        context.read<EmailVerificationBloc>().add(
                              const EmailVerificationEvent
                                  .sendVerificationEmail(),
                            );
                      },
                child: const Text('Send Verification Email'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
