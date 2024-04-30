import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_constants/shared_constants.dart';

import '../create_toy.dart';


class CreateToyDescriptionDisplayer extends StatelessWidget {
  const CreateToyDescriptionDisplayer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final toyDescription = context.select(
      (CreateToyCubit bloc) => bloc.state.toyDescription.value,
    );
    final contextTheme = Theme.of(context);
    return Padding(
      padding: SharedPaddings.horizontal20,
      child: Text(
        toyDescription,
        style: contextTheme.textTheme.bodyLarge?.copyWith(
          color: contextTheme.colorScheme.onBackground.withOpacity(0.6),
        ),
      ),
    );
  }
}
