import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:toy_swapp/terms_of_use/modals/terms_of_use_pop_ups.dart';

import '../../themes/themes.dart';
import '../app.dart';

class AppView extends StatelessWidget {
  const AppView({
    required this.localizationsDelegates,
    required this.supportedLocales,
    required this.appRouter,
    super.key,
  });

  final Iterable<LocalizationsDelegate<dynamic>>? localizationsDelegates;
  final Iterable<Locale> supportedLocales;
  final RouterConfig<Object>? appRouter;

  @override
  Widget build(BuildContext context) {
    final appPreferences = context.read<AppBloc>().state.appPreferences;
    final appMetadata = context.read<AppBloc>().state.appMetadata;

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // Theme
      theme: ThemeData(),
      darkTheme: CustomThemeData.themeData(
        const DarkThemePalette(),
      ),
      themeMode: appPreferences.themeMode,

      // Localization
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      locale: localeFromLanguageCode(appPreferences.languageCode),

      // Router
      routerConfig: appRouter,
      builder: (_, child) {
        return Stack(
          children: [
            child!,
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final isShowTerms = await showTermsOfUsePopUpIfNeeded(
                    appMetadata: appMetadata,
                    appPreferences: appPreferences,
                  );
                  if (isShowTerms && context.mounted) {
                    TermsOfUsePopUps.showAcceptTermsPopUp(context);
                  }
                },
                child: const Text('Button'),
              ),
            ),
          ],
        );
      },
    );
  }

  Locale? localeFromLanguageCode(String? languageCode) {
    if (languageCode == null) {
      return null;
    }
    return Locale.fromSubtags(languageCode: languageCode);
  }

  Future<bool> showTermsOfUsePopUpIfNeeded({
    required AppPreferences appPreferences,
    required AppMetadata appMetadata,
  }) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final termsOfUseAcceptance = appPreferences.termsOfUseAcceptance;
    final isTermsNotAccepted = termsOfUseAcceptance == null;

    if (isTermsNotAccepted) {
      return true;
    }

    // Terms Release Numbers - accepted and current
    final acceptedTermsReleaseNumber =
        appPreferences.termsOfUseAcceptance?.acceptedTermsReleaseNumber;
    // final packageInfo = await PackageInfo.fromPlatform();
    final currentTermsReleaseNumber = packageInfo.buildNumber;
    final isThereNewTermsVersion =
        acceptedTermsReleaseNumber! < int.parse(currentTermsReleaseNumber);
    if (!isThereNewTermsVersion) {
      return false;
    }

    // THERE IS NEW TERMS VERSION
    // Check if user downloaded new app version.
    // App Release Numbers - accepted and current
    final acceptedAppBuildNumber =
        appPreferences.termsOfUseAcceptance!.acceptedAppBuildNumber;
    final currentAppBuildNumber = appMetadata.appVersion.buildNumber;
    final isThereNewAppVersion = acceptedAppBuildNumber < currentAppBuildNumber;
    if (!isThereNewAppVersion) {
      return false;
    }
    return true;
  }
}
