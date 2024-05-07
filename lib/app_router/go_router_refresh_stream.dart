import 'dart:async';

import 'package:flutter/widgets.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream({
    required Stream<dynamic> stream1,
    required Stream<dynamic> stream2,
  }) {
    _subscription = stream1.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
    _subscription2 = stream2.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;
  late final StreamSubscription<dynamic> _subscription2;

  @override
  void dispose() {
    _subscription.cancel();
    _subscription2.cancel();
    super.dispose();
  }
}
