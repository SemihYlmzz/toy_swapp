import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:toy_swapp/router/app_router.dart';

import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final authRepository = await AuthRepositoryInitializer.initialize();
  final routerConfig = AppRouter().router(authRepository.isSignedInStream());

  runApp(AppScreen(authRepository: authRepository, routerConfig: routerConfig));
}
