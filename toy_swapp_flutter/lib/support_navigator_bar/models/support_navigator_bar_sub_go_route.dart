import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class SupportNavigatorBarSubGoRoute extends GoRoute {
  SupportNavigatorBarSubGoRoute({
    required super.path,
    required super.name,
    required super.pageBuilder,
    this.appBar,
    this.drawer,
    this.endDrawer,
  });

  @override
  List<SupportNavigatorBarSubGoRoute> get routes => [];

  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? endDrawer;
}
