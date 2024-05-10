import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_repository/toy_repository.dart';

import '../create_toy.dart';

class CreateToyScreen extends StatelessWidget {
  const CreateToyScreen({required this.imageList, super.key});
  final List<ToyImage> imageList;

  @override
  Widget build(BuildContext context) {
    final createToyBlocListeners = CreateToyBlocListeners();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CreateToyBloc(
            authRepository: context.read(),
            toyRepository: context.read(),
            consumerRepository: context.read(),
          ),
        ),
        BlocProvider(
          create: (context) => CreateToyCubit(imageUrlList: imageList),
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
