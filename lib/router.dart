import 'package:flutter/material.dart';
import 'package:needme/features/screens/auth_screens.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Authscreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Authscreen(),
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                  body: Center(
                child: Text('Screen does not exist'),
              )));
  }
}
