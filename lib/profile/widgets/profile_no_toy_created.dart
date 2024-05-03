import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/navigator_bar/navigator_bar.dart';


class ProfileNoToyCreated extends StatelessWidget {
  const ProfileNoToyCreated({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Seems like you do not have any toy yet.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SharedGap.gap8,
          ElevatedButton(
            onPressed: () {
              context.read<NavigatorBarCubit>().selectMultipleImages();
            },
            child: const Text('Create a toy'),
          ),
          SharedGap.gap8,
          Text(
            'If you do have, pull to refresh.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.white24,
                ),
          ),
        ],
      ),
    );
  }
}
