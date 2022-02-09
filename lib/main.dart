import 'package:flutter/material.dart';
import 'package:managerservices/screens/HomePage.dart';
import 'package:managerservices/utils/theme_data.dart';

void main() {
  runApp(
    MyApp(),

    // MaterialApp(
    // title: 'Named Routes Example',
    //   initialRoute: HomePage.route,
    //    routes: {
    //      HomePage.route: (context) => HomePage(),
    //     // OverviewPage.route: (context) => OverviewPage(),
    //    },
    // ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Future getUserInfo() async {
  //   await getUser();
  //   setState(() {});
  //   print(uid);
  // }

  @override
  void initState() {
    //getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manager Services',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      debugShowCheckedModeBanner: false,

      // initialRoute: HomePage.route,
      // routes: {
      //   HomePage.route: (context) => HomePage(),
      //   NewsPages.route: (context) => NewsPages(),
      // }
      home: HomePage(),

      // Why builder is used: https://stackoverflow.com/questions/49748759/example-for-builder-property-in-materialapp-class-in-flutter
      // builder: (_, child) => AppView(
      //   child: child!,
      // ),
      // Global key:
      // 1) https://medium.com/flutter-community/navigate-without-context-in-flutter-with-a-navigation-service-e6d76e880c1c
      // 2) https://stackoverflow.com/questions/50303441/flutter-redux-navigator-globalkey-currentstate-returns-null
      // initialRoute: routeHome,
      // navigatorKey: navKey,
      // onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
