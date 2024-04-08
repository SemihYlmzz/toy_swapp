import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../terms_of_use.dart';

class TermsOfUseAcceptancePopUp extends StatelessWidget {
  const TermsOfUseAcceptancePopUp({
    required this.appMetadata,
    required this.repositoryContext,
    super.key,
  });
  // Requirements
  final BuildContext repositoryContext;
  final AppMetadata appMetadata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: SharedPaddings.bottom64,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlocProvider(
              create: (_) => TermsOfUseBloc(
                appPreferencesRepository: repositoryContext.read(),
                appMetadata: appMetadata,
              ),
              child: Builder(
                builder: (context) {
                  final termsOfUseBlocListener = TermsOfUseBlocListeners();
                  return MultiBlocListener(
                    listeners: [
                      termsOfUseBlocListener.errorDisplayer(),
                      termsOfUseBlocListener.popOnAccept(),
                    ],
                    child: Center(
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
                                'I agree to the Terms of Service, have read '
                                'the Privacy Notices for '
                                'Toy Swapp and Devangs, '
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
                                      context.read<TermsOfUseBloc>().add(
                                            const TermsOfUseEvent
                                                .acceptTermsOfUse(),
                                          );
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
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
