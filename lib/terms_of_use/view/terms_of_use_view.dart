import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:styled_text/styled_text.dart';

import '../terms_of_use.dart';

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({super.key});

  @override
  Widget build(BuildContext context) {
    void openTermsOfService(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const DisplayTermsOfServiceView(),
        ),
      );
    }

    void openDevangsPrivacyPolicy(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const DisplayDevangsPrivacyNoticesView(),
        ),
      );
    }

    void openToySwappPrivacyPolicy(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (_) => const DisplayToySwappPrivacyNoticesView(),
        ),
      );
    }

    return BaseScaffold(
      safeArea: true,
      appBar: const TermsOfUseAppBar(),
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
                  text: context.termsOfUseLocalization.termsOfUseText(
                    TermsOfUseStrings.termsOfUseTag,
                    TermsOfUseStrings.devangsTag,
                    TermsOfUseStrings.toySwappTag,
                  ),
                  tags: {
                    TermsOfUseStrings.termsOfUseTag: StyledTextActionTag(
                      (text, attrs) => openTermsOfService(context),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TermsOfUseStrings.devangsTag: StyledTextActionTag(
                      (text, attrs) => openDevangsPrivacyPolicy(context),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    TermsOfUseStrings.toySwappTag: StyledTextActionTag(
                      (text, attrs) => openToySwappPrivacyPolicy(context),
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
