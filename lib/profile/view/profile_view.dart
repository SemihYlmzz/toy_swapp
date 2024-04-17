import 'package:flutter/material.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseColumn(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: SharedPaddings.left32,
              child: ConsumerAvatarDisplayer(),
            ),
            ProfileCounterDisplayer(
              counterName: 'Toys',
              counterValue: 5,
            ),
            ProfileCounterDisplayer(
              counterName: 'Switched',
              counterValue: 3,
            ),
            ProfileCounterDisplayer(
              counterName: 'Chance',
              counterValue: 12,
            ),
            SharedGap.gap4,
          ],
        ),
      ],
    );
  }
}
