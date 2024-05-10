import 'package:flutter/material.dart';

class ConsumerDataCalibrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ConsumerDataCalibrationAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Consumer Data Calibration'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
