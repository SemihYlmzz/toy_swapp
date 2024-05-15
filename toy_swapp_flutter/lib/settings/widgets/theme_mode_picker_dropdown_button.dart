import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';
import 'package:toy_swapp/app/app.dart';

import '../settings.dart';

class ThemeModePickerDropdownButton extends StatelessWidget {
  const ThemeModePickerDropdownButton({
    super.key,
  });
  String themeName(ThemeMode themeMode) {
    return switch (themeMode) {
      ThemeMode.system => 'System',
      ThemeMode.dark => 'Dark',
      ThemeMode.light => 'Light',
    };
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = context.select(
      (AppBloc bloc) => bloc.state.appPreferences.themeMode,
    );
    return DropdownButton(
      dropdownColor: Theme.of(context).colorScheme.surface,
      menuMaxHeight: 300,
      value: themeMode,
      items: ThemeMode.values.map((ThemeMode theme) {
        return DropdownMenuItem<ThemeMode>(
          value: theme,
          child: Text(themeName(theme)),
        );
      }).toList(),
      borderRadius: SharedBorderRadius.circular12,
      onChanged: (ThemeMode? value) {
        if (value == null) {
          return;
        }
        context.read<SettingsBloc>().add(
              SettingsEvent.updateThemeMode(updatedThemeMode: value),
            );
      },
    );
  }
}
