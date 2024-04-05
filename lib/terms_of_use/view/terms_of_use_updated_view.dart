import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:styled_text/styled_text.dart';

import '../terms_of_use.dart';

class TermsOfUseUpdatedView extends StatelessWidget {
  const TermsOfUseUpdatedView({
    required this.openTermsOfService,
    required this.openDevangsPrivacyPolicy,
    required this.openToySwappPrivacyPolicy,
    super.key,
  });
  final VoidCallback openTermsOfService;
  final VoidCallback openDevangsPrivacyPolicy;
  final VoidCallback openToySwappPrivacyPolicy;
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      safeArea: true,
      appBar: AppBar(
        title: const Text('Terms of Use Updated'),
        centerTitle: true,
      ),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: SharedPaddings.all16,
                child: StyledText(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                  text: context.termsOfUseLocalization.termsOfUseUpdatedText(
                    TermsOfUseStrings.termsOfUseTag,
                    TermsOfUseStrings.devangsTag,
                    TermsOfUseStrings.toySwappTag,
                  ),
                  tags: {
                    TermsOfUseStrings.termsOfUseTag: StyledTextActionTag(
                      (text, attrs) => openTermsOfService(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TermsOfUseStrings.devangsTag: StyledTextActionTag(
                      (text, attrs) => openDevangsPrivacyPolicy(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TermsOfUseStrings.toySwappTag: StyledTextActionTag(
                      (text, attrs) => openToySwappPrivacyPolicy(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  },
                ),
              ),
            ),
          ),
          Column(
            children: [
              Text(context.termsOfUseLocalization.requiredToContinueText),
              ElevatedButton(
                onPressed: () {
                  context.read<TermsOfUseBloc>().add(
                        const TermsOfUseEvent.acceptTerms(),
                      );
                },
                child: Text(context.termsOfUseLocalization.accept),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
