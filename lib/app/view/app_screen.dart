import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_service/image_service.dart';
import 'package:location_service/location_service.dart';
import 'package:permission_service/permission_service.dart';

import '../app.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    required PermissionService permissionService,
    required ImageService imageService,
    required LocationService locationService,
    required AuthRepository authRepository,
    required AppPreferencesRepository appPreferencesRepository,
    required ConsumerRepository consumerRepository,
    required AppMetadataRepository appMetadataRepository,
    required AppMetadata appMetadata,
    required AppPreferences appPreferences,
    required RouterConfig<Object> routerConfig,
    super.key,
  })  : _permissionService = permissionService,
        _imageService = imageService,
        _locationService = locationService,
        _authRepository = authRepository,
        _appPreferencesRepository = appPreferencesRepository,
        _appPreferences = appPreferences,
        _appMetadataRepository = appMetadataRepository,
        _consumerRepository = consumerRepository,
        _appMetadata = appMetadata,
        _routerConfig = routerConfig;
  // Services
  final PermissionService _permissionService;
  final ImageService _imageService;
  final LocationService _locationService;

  // Repositories
  final AuthRepository _authRepository;
  final AppPreferencesRepository _appPreferencesRepository;
  final AppMetadataRepository _appMetadataRepository;
  final ConsumerRepository _consumerRepository;

  // Instances
  final AppPreferences _appPreferences;
  final AppMetadata _appMetadata;
  final RouterConfig<Object> _routerConfig;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Services
        RepositoryProvider(create: (context) => _permissionService),
        RepositoryProvider(create: (context) => _imageService),
        RepositoryProvider(create: (context) => _locationService),
        // Repos
        RepositoryProvider(create: (context) => _authRepository),
        RepositoryProvider(create: (context) => _appPreferencesRepository),
        RepositoryProvider(create: (context) => _appMetadataRepository),
        RepositoryProvider(create: (context) => _consumerRepository),
        // Bloc
        BlocProvider(
          create: (context) => AppBloc(
            appPreferencesRepository: _appPreferencesRepository,
            appPreferences: _appPreferences,
            appMetadata: _appMetadata,
          )..add(const AppEvent.checkIsTermsAccepted()),
        ),
      ],
      child: AppView(
        routerConfig: _routerConfig,
      ),
    );
  }
}
