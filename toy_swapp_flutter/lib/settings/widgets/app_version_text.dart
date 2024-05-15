import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../settings.dart';

class AppVersionText extends StatelessWidget {
  const AppVersionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appVersion = context.select(
      (SettingsBloc bloc) => bloc.state.appMetadata.version,
    );
    return Text(
      'Version: $appVersion',
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
          ),
    );
  }
}
