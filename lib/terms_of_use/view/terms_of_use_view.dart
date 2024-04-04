import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../terms_of_use.dart';

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      appBar: const TermsOfUseAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'I Agree to the ',
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const TextSpan(
                      text: ', have read the Privacy Notices for ',
                    ),
                    TextSpan(
                      text: 'Devangs',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const TextSpan(
                      text: ' and ',
                    ),
                    TextSpan(
                      text: 'Toy Swapp',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    const TextSpan(
                      text: ', and confirm that I am at least 13 years old.',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              const Text('This is required to continue.'),
              ElevatedButton(
                onPressed: () {
                  context.read<TermsOfUseBloc>().add(
                        const TermsOfUseEvent.acceptTerms(),
                      );
                },
                child: const Text('Accept'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
