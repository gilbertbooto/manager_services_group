import 'package:flutter/material.dart';
import 'package:managerservices/screens/HomePage.dart';

class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _ExploreDrawerState createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  bool _isProcessing = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Manager Services"),
              accountEmail: Text("contact@managerservices.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Colors.blue
                        : Colors.transparent,
                child: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    'assets/logo.jpg',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 10.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pop();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            fullscreenDialog: true,
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Text(
                        'Accueil',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(
                        color: Colors.blueGrey[400],
                        thickness: 0.8,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Actualités',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(
                        color: Colors.blueGrey[400],
                        thickness: 0.8,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Nos services',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(
                        color: Colors.blueGrey[400],
                        thickness: 0.8,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'A propos de nous',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: Divider(
                        color: Colors.blueGrey[400],
                        thickness: 0.8,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Nous contacter',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright © 2022 | Manager Services',
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
