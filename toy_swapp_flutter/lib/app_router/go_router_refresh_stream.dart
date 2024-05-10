import 'dart:async';

import 'package:flutter/widgets.dart';

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream({
    required Stream<dynamic> stream1,
    required Stream<dynamic> stream2,
    required Stream<dynamic> stream3,
  }) {
    _subscription = stream1.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
    _subscription2 = stream2.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
    _subscription3 = stream3.asBroadcastStream().listen((dynamic _) {
      notifyListeners();
    });
  }

  late final StreamSubscription<dynamic> _subscription;
  late final StreamSubscription<dynamic> _subscription2;
  late final StreamSubscription<dynamic> _subscription3;

  @override
  void dispose() {
    _subscription.cancel();
    _subscription2.cancel();
    _subscription3.cancel();
    super.dispose();
  }
}
