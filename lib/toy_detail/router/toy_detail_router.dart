import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:toy_repository/toy_repository.dart';
import '../toy_detail.dart';

class ToyDetailRouter {
  factory ToyDetailRouter() {
    return instance;
  }
  ToyDetailRouter._();
  static final ToyDetailRouter instance = ToyDetailRouter._();

  static const String _path = '/toy_detail';
  static const String _name = 'toy_detail';

  String get path => _path;
  String get name => _name;

  GoRoute get route => GoRoute(
        path: _path,
        name: _name,
        // parentNavigatorKey: RouterMixin.parentNavigatorKey,
        pageBuilder: (context, state) => MaterialPage(
          child: ToyDetailScreen(
            requirements: state.extra! as ToyDetailScreenRequirements,
          ),
        ),
      );
  void go(BuildContext context, ToyDetailScreenRequirements requirements) {
    GoRouter.of(context).goNamed(_name, extra: requirements);
  }

  void push(BuildContext context, ToyDetailScreenRequirements requirements) {
    FocusManager.instance.primaryFocus?.unfocus();
    GoRouter.of(context).pushNamed(_name, extra: requirements);
  }
}

class ToyDetailScreenRequirements {
  const ToyDetailScreenRequirements({
    required this.toy,
    required this.ownerConsumer,
    required this.heroTag,
  });
  final Toy toy;
  final Consumer? ownerConsumer;
  final String heroTag;
}
