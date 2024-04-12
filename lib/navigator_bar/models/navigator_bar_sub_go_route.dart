import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// import '../navigator_bar.dart';

abstract class NavigatorBarSubGoRoute extends GoRoute {
  NavigatorBarSubGoRoute({
    required super.path,
    required super.name,
    required super.pageBuilder,
    this.appBar,
    this.drawer,
    this.endDrawer,
  });

  @override
  List<NavigatorBarSubGoRoute> get routes => [];

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? endDrawer;
}
