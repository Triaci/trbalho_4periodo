import 'package:flutter/cupertino.dart';
import 'package:trabfinal/screens/home_screen.dart';


class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '\home': (_) => const HomePage(),
  };
  static String initial = '/home';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
