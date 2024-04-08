import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_constants/shared_constants.dart';

import '../terms_of_use.dart';

class TermsOfUseAcceptancePopUp extends StatelessWidget {
  const TermsOfUseAcceptancePopUp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TermsOfUseBloc(),
      child: Builder(
        builder: (context) {
          return Center(
            child: Material(
              child: Container(
                width: 320,
                height: 250,
                padding: SharedPaddings.all16,
                decoration: BoxDecoration(
                  color: const Color(0xFF272C33),
                  borderRadius: SharedBorderRadius.circular16,
                  border: Border.all(
                    color: Colors.green,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'I agree to the Terms of Service, have read the '
                      'Privacy Notices for Toy Swapp and Devangs, '
                      'and confirm that  I am at least 13 years old.',
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: [
                        const Text(
                          'This is required to continue.',
                          style: TextStyle(
                            color: Colors.white38,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            context
                                .read<TermsOfUseBloc>()
                                .add(const TermsOfUseEvent.fetch());
                            Navigator.maybePop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Accept'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
