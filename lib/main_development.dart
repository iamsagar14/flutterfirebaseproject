// 🐦 Flutter imports:

import 'package:MusicApp/firebase_options.dart';
import 'package:MusicApp/main_common.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'services/locator.dart' as di;
import 'firebase/firebase_helper.dart';
// 🌎 Projectim imports:
import 'package:MusicApp/config/config.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await di.locator.get<PushNotificationHelper>().setupFlutterNotifications();
  di.locator.get<PushNotificationHelper>().showFlutterNotification(message);
}

void main() async {
  di.initLocator();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await di.locator.get<PushNotificationHelper>().setupFlutterNotifications();
  await di.locator.get<DynamicLinkHelper>().handleDynamicLinks();
  await di.locator.get<RemoteConfigHelper>().initialise();
  WidgetsFlutterBinding.ensureInitialized();
  mainCommon(flavor: Flavor.development);
}
