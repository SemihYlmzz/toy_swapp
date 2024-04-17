import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_widgets/shared_widgets.dart';

import '../permissions.dart';

class PermissionsScreen extends StatelessWidget {
  const PermissionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final permissionsBlocListeners = PermissionsBlocListeners();
  
    return BlocProvider(
      create: (context) => PermissionsBloc(),
      child: MultiBlocListener(
        listeners: [
          permissionsBlocListeners.errorDisplayer(),
        ],
        child: BlocSelector<PermissionsBloc, PermissionsState, bool>(
          selector: (state) => state.isLoading,
          builder: (context, isLoading) {
            return LoadingScreen(
              isLoading: isLoading,
              size: MediaQuery.sizeOf(context),
              child: const PermissionsView(),
            );
          },
        ),
      ),
    );
  }
}
