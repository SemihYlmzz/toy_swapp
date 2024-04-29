import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_touch_ripple/flutter_touch_ripple.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/app/app.dart';

class CreateToyPopButton extends StatelessWidget {
  const CreateToyPopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVibratable =
        context.read<AppBloc>().state.appPreferences.isVibratable;
    return Container(
      width: 50,
      height: 50,
      margin: SharedPaddings.all20,
      decoration: const BoxDecoration(
        color: Colors.black54,
        shape: BoxShape.circle,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: TouchRipple<void>(
          rippleColor: Colors.white24,
          onTap: () {
            if (isVibratable) HapticFeedback.mediumImpact();
            Navigator.maybePop(context);
          },
          child: const Icon(Icons.close_rounded),
        ),
      ),
    );
  }
}
