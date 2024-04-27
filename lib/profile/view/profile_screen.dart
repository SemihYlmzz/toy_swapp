import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profileBlocListeners = ProfileBlocListeners();

    return BlocProvider(
      create: (context) => ProfileBloc(
        authRepository: context.read(),
        toyRepository: context.read(),
      )..add(const ProfileEvent.fetchOwnedToys()),
      child: MultiBlocListener(
        listeners: [
          profileBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<ProfileBloc, ProfileState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const ProfileView(),
            );
          },
        ),
      ),
    );
  }
}
