import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/app/app.dart';

import '../support_navigator_bar.dart';

class SupportNavigatorBarView extends StatelessWidget {
  const SupportNavigatorBarView({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;
  @override
  Widget build(BuildContext context) {
    final selectedSubRoute = context
        .select((SupportNavigatorBarCubit bloc) => bloc.state.selectedSubRoute);
    final isVibratable = context
        .select((AppBloc bloc) => bloc.state.appPreferences.isVibratable);

    return BaseScaffold(
      safeArea: true,
      appBar: selectedSubRoute?.appBar,
      body: navigationShell,
      drawer: selectedSubRoute?.drawer,
      endDrawer: selectedSubRoute?.endDrawer,
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        currentIndex: navigationShell.currentIndex,
        onTap: (index) {
          if (isVibratable) HapticFeedback.mediumImpact();
          navigationShell.goBranch(index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Acceptance'),
          BottomNavigationBarItem(icon: Icon(Icons.report), label: 'Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
