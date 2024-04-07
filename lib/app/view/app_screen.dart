import 'package:auth_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required AuthRepository authRepository,
    required RouterConfig<Object> routerConfig,
    super.key,
  })  : _authRepository = authRepository,
        _routerConfig = routerConfig;

  final AuthRepository _authRepository;
  final RouterConfig<Object> _routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Repos
        RepositoryProvider(create: (context) => _authRepository),

        // Bloc
        BlocProvider(
          create: (context) => AppBloc(authRepository: _authRepository),
        ),
      ],
      child: AppView(routerConfig: _routerConfig),
    );
  }
}
