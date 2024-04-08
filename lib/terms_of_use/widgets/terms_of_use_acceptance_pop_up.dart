import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkpeek/linkpeek.dart';
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
    final termsOfUseBlocListener = TermsOfUseBlocListeners();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocProvider(
        create: (_) => TermsOfUseBloc(
          appPreferencesRepository: repositoryContext.read(),
          appMetadata: appMetadata,
        ),
        child: Builder(
          builder: (context) {
            return MultiBlocListener(
              listeners: [
                termsOfUseBlocListener.errorDisplayer(),
                termsOfUseBlocListener.popOnAccept(),
              ],
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 320,
                  height: 250,
                  margin: SharedPaddings.bottom64,
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
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            const TextSpan(
                              text: 'I agree to the ',
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  LinkPeek.showLinkPeekPopup(
                                    context,
                                    appMetadata.termsVersions.termsOfServiceUrl,
                                  );
                                },
                            ),
                            const TextSpan(
                              text: ', have read the Privacy Notices for ',
                            ),
                            TextSpan(
                              text: 'Toy Swapp',
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  LinkPeek.showLinkPeekPopup(
                                    context,
                                    appMetadata
                                        .termsVersions.toySwappPrivacyPolicyUrl,
                                  );
                                },
                            ),
                            const TextSpan(
                              text: ' and ',
                            ),
                            TextSpan(
                              text: 'Devangs',
                              style: const TextStyle(
                                color: Colors.green,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  LinkPeek.showLinkPeekPopup(
                                    context,
                                    appMetadata
                                        .termsVersions.devangsPrivacyPolicyUrl,
                                  );
                                },
                            ),
                            const TextSpan(
                              text: ', and confirm that '
                                  ' I am at least 13 years old.',
                            ),
                          ],
                        ),
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
                                    const TermsOfUseEvent.acceptTermsOfUse(),
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
            );
          },
        ),
      ),
    );
  }
}
