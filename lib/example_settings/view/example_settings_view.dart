import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/l10n/l10n.dart';
import '../example_settings.dart';

class ExampleSettingsView extends StatelessWidget {
  const ExampleSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ExampleSettingsAppBar(),
      body: BaseColumn(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text('${context.l10n.appTheme} :'),
                TextButton(
                  onPressed: () {
                    context.read<ExampleSettingsBloc>().add(
                          const ExampleSettingsEvent.updateAppThemeMode(
                            updatedThemeMode: ThemeMode.system,
                          ),
                        );
                  },
                  child: Text(context.l10n.deviceTheme),
                ),
                TextButton(
                  onPressed: () {
                    context.read<ExampleSettingsBloc>().add(
                          const ExampleSettingsEvent.updateAppThemeMode(
                            updatedThemeMode: ThemeMode.light,
                          ),
                        );
                  },
                  child: Text(context.l10n.lightTheme),
                ),
                TextButton(
                  onPressed: () {
                    context.read<ExampleSettingsBloc>().add(
                          const ExampleSettingsEvent.updateAppThemeMode(
                            updatedThemeMode: ThemeMode.dark,
                          ),
                        );
                  },
                  child: Text(context.l10n.darkTheme),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text('${context.l10n.language} :'),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(context.l10n.deviceLanguage),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<ExampleSettingsBloc>().add(
                            const ExampleSettingsEvent.updateAppLanguage(
                              updatedLanguage: Language.english,
                            ),
                          );
                    },
                    child: const Text('English'),
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<ExampleSettingsBloc>().add(
                            const ExampleSettingsEvent.updateAppLanguage(
                              updatedLanguage: Language.turkish,
                            ),
                          );
                    },
                    child: const Text('Türkçe'),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Text('VIBRATION :'),
              Expanded(
                child: Switch.adaptive(value: true, onChanged: (value) {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
