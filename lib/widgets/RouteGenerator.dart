import 'package:flutter/material.dart';

import 'package:managerservices/screens/HomePage.dart';
import 'package:managerservices/screens/NewsPages.dart';
import 'package:managerservices/utils/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());

      case routeAbout:
        return MaterialPageRoute(builder: (_) => NewsPages());
      // case routeContacts:
      //   return MaterialPageRoute(builder: (_) => ContactPage());
      //   break;

      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
