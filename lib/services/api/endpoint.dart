// 🌎 Project imports:
import 'package:MusicApp/config/config.dart';
import 'package:MusicApp/services/locator.dart';

class Endpoint {
  Endpoint._();

  static final String baseUrl = locator.get<Config>().baseUrl;
}
