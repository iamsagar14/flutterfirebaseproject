// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:MusicApp/config/config.dart';
import 'package:MusicApp/services/api/base_client.dart';
import 'package:MusicApp/firebase/push_notification_helper.dart';
import 'package:MusicApp/firebase/dynamic_link_helper.dart';
import 'package:MusicApp/firebase/remote_config_helper.dart';

GetIt locator = GetIt.instance;
void initLocator() {
  locator.registerLazySingleton(
    () => Config(),
  );

  locator.registerLazySingleton(
    () => BaseClient(),
  );

  locator.registerLazySingleton(
    () => PushNotificationHelper(),
  );

  locator.registerLazySingleton(
    () => DynamicLinkHelper(),
  );

  locator.registerLazySingleton(
    () => RemoteConfigHelper(),
  );
}
