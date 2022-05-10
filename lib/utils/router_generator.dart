import 'package:flutter/material.dart';
import 'package:managerservices/screens/HomePage.dart';
import 'package:managerservices/utils/routes.dart';
import 'package:managerservices/widgets/ui/contact.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());

        break;

      case routeNews:
        return MaterialPageRoute(builder: (_) => ContactPage());

        break;

      // case routeServices:
      //   return MaterialPageRoute(builder: (_) => ServicesPage());

      // case routeAbout:
      //   return MaterialPageRoute(builder: (_) => AboutPage());

      // case routeContacts:
      //   return MaterialPageRoute(builder: (_) => ContactPage());
    }
  }
}
