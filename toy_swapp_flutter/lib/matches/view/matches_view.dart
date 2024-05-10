import 'package:flutter/material.dart';
import 'package:toy_swapp/sub_matches/sub_matches.dart';

class MatchesView extends StatelessWidget {
  const MatchesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: TextButton(
            onPressed: () {
              SubMatchesGoRoute.instance.go(context);
            },
            child: const Text('Display Matches'),
          ),
        ),
      ],
    );
  }
}
