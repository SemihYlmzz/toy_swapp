import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../create_toy.dart';
class CreateToyNameDisplayer extends StatelessWidget {
  const CreateToyNameDisplayer({super.key});

  @override
  Widget build(BuildContext context) {
    final toyName = context.select((CreateToyCubit bloc) => bloc.state.toyName);
    return Text(
      toyName.value,
      style: Theme.of(context).textTheme.displaySmall,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
