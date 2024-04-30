import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_widgets/shared_widgets.dart';
import 'package:toy_swapp/navigator_bar/navigator_bar.dart';

import '../../app/app.dart';

class NavigatorBarView extends StatelessWidget {
  const NavigatorBarView({
    required this.navigationShell,
    super.key,
  });
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final subRoute = context.select(
      (NavigatorBarCubit bloc) => bloc.state.selectedSubRoute,
    );
    final isVibratable = context.select(
      (AppBloc bloc) => bloc.state.appPreferences.isVibratable,
    );
    return BaseScaffold(
      safeArea: true,
      appBar: subRoute?.appBar,
      body: navigationShell,
      drawer: subRoute?.drawer,
      endDrawer: subRoute?.endDrawer,
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        currentIndex: navigationShell.currentIndex < 2
            ? navigationShell.currentIndex
            : navigationShell.currentIndex + 1,
        onTap: (index) {
          if (isVibratable) HapticFeedback.mediumImpact();

          if (index < 2) {
            navigationShell.goBranch(index);
          }
          if (index == 2) {
            
            context.read<NavigatorBarCubit>().selectMultipleImages();
          }
          if (index > 2) {
            navigationShell.goBranch(index - 1);
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Toys',
            icon: const Icon(Icons.home),
            activeIcon: const Icon(Icons.home, size: 30),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            label: 'Demands',
            icon: const Icon(Icons.favorite),
            activeIcon: const Icon(Icons.favorite, size: 30),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            label: 'Add Toy',
            icon: const Icon(Icons.add_circle),
            activeIcon: const Icon(Icons.add_circle, size: 30),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            label: 'Matches',
            icon: const Icon(Icons.safety_divider_outlined),
            activeIcon: const Icon(Icons.safety_divider_outlined, size: 30),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: const Icon(Icons.person),
            activeIcon: const Icon(Icons.person, size: 30),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
        ],
      ),
    );
  }
}
