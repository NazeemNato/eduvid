import 'package:eduvid/screens/screens.dart';
import 'package:fluro/fluro.dart';

class FluroRoutes {
  static FluroRouter router = FluroRouter();
  static void setupRouter() {
    router.define('/', handler: _homeScreen);
  }

  static Handler _homeScreen = Handler(
    handlerFunc: (context, params) => HomeScreen(),
  );
}
