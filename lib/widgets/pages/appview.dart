import 'package:flutter/material.dart';
import 'package:managerservices/widgets/TopBarContents.dart';

class AppView extends StatefulWidget {
  Widget child;
  double _opacity = 0;

  AppView(this._opacity, {required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopBarContents(widget._opacity),
          Expanded(child: widget.child)
        ],
      ),
    );
  }
}
