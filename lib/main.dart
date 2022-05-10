import 'package:flutter/material.dart';
import 'package:managerservices/screens/HomePage.dart';
import 'package:managerservices/utils/router_generator.dart';
import 'package:managerservices/utils/routes.dart';
import 'package:managerservices/utils/theme_data.dart';
import 'package:managerservices/widgets/TopBarContents.dart';

import 'widgets/pages/appview.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _opacity = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manager Services',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // return MaterialApp(
      //   title: 'Manager Services',
      //   theme: lightThemeData,
      //   darkTheme: darkThemeData,
      //   debugShowCheckedModeBanner: false,
      home: HomePage(),

      // builder: (_, child) => AppView(
      //   child: child,
      // ),

      // builder: (_, child) => AppView(_opacity, child: child!),

      // initialRoute: routeHome,
      // navigatorKey: navKey,
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
