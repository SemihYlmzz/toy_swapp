import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AcceptTermsPopUp extends StatelessWidget {
  const AcceptTermsPopUp(this.builderContext, {super.key});
  final BuildContext builderContext;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(),
        ScaleEffect(
          begin: Offset(0.85, 0.85),
        ),
      ],
      child: AlertDialog(
        title: const Text('Terms Updated'),
        content: SizedBox(
          height: 100,
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Test Text 2',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Test Text 3',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child: const Text('Accept'),
            onPressed: () {
              Navigator.maybePop(context);
            },
          ),
        ],
      ),
    );
  }
}
