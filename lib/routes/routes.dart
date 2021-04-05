import 'package:eduvid/screens/screens.dart';
import 'package:fluro/fluro.dart';

class FluroRoutes {
  static FluroRouter router = FluroRouter();
  static void setupRouter() {
    router.define('/', handler: _homeScreen);
    router.define('/video/:id', handler: _videoScreen);
    
  }

  static Handler _homeScreen = Handler(
    handlerFunc: (context, params) => HomeScreen(),
  );

  static Handler _videoScreen = Handler(
    handlerFunc: (context, params) => VideoScreen(
      id: params['id'].first,
    ),
  );
}