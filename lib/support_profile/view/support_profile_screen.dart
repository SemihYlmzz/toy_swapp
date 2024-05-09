import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../support_profile.dart';

class SupportProfileScreen extends StatelessWidget {
  const SupportProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final supportProfileBlocListeners = SupportProfileBlocListeners();

    return BlocProvider(
      create: (context) => SupportProfileBloc(),
      child: MultiBlocListener(
        listeners: [
          supportProfileBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<SupportProfileBloc, SupportProfileState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const SupportProfileView(),
            );
          },
        ),
      ),
    );
  }
}
