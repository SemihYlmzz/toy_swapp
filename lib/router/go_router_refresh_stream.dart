import 'dart:async';

import 'package:flutter/widgets.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream({
    required Stream<dynamic> stream,
  }) {
    _subscription = stream.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
