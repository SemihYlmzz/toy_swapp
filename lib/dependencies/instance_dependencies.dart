import 'package:toy_swapp/dependencies/dependencies.dart';
import 'package:toy_swapp/app_router/app_router.dart';

import 'models/models.dart';

class InstanceDependencies {
  const InstanceDependencies();

  Future<Instances> init({
    // Router Config
    required Repositories repositories,
  }) async {
    final goRouter = AppRouter().router(
      repositories.auth.currentAuthStream,
      repositories.consumer.currentConsumerStream,
    );
    final appPreferences = await repositories.appPreferences.read();
    final appMetadata = await repositories.appMetadata.read();
    final deviceMetadata = await repositories.deviceMetadata.read();

    return Instances(
      goRouter: goRouter,
      appPreferences: appPreferences,
      appMetadata: appMetadata,
      deviceMetadata: deviceMetadata,
    );
  }
}
