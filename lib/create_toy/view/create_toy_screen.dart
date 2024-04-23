import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../create_toy.dart';

class CreateToyScreen extends StatelessWidget {
  const CreateToyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final createToyBlocListeners = CreateToyBlocListeners();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateToyBloc(
            authRepository: context.read(),
            toyRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => CreateToyCubit(
            imageService: context.read(),
          ),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          createToyBlocListeners.errorDisplayer(),
          createToyBlocListeners.navigateProfileOnCreate(),
        ],
        child: BlocSelector<CreateToyBloc, CreateToyState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const CreateToyView(),
            );
          },
        ),
      ),
    );
  }
}
