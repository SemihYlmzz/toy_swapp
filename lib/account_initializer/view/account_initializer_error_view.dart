import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/account_initializer/account_initializer.dart';

class AccountInitializerErrorView extends StatelessWidget {
  const AccountInitializerErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SharedGap.gap32,
          Animate(
            effects: const [ShakeEffect()],
            child: Text(
              'Oops! Something went wrong!',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientButton(
                onPressed: () {
                  context.read<AccountInitializerBloc>().add(
                        const AccountInitializerEvent.signOut(),
                      );
                },
                text: 'Sign Out',
                isOutlined: true,
                width: 150,
              ),
              GradientButton(
                onPressed: () {
                  context.read<AccountInitializerBloc>().add(
                        const AccountInitializerEvent.fetchAccountData(),
                      );
                },
                text: 'Retry',
                width: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
