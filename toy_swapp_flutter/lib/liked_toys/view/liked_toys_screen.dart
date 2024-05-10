import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../liked_toys.dart';

class LikedToysScreen extends StatelessWidget {
  const LikedToysScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final likedToysBlocListeners = LikedToysBlocListeners();
  
    return BlocProvider(
      create: (context) => LikedToysBloc(),
      child: MultiBlocListener(
        listeners: [
          likedToysBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<LikedToysBloc, LikedToysState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const LikedToysView(),
            );
          },
        ),
      ),
    );
  }
}
