import 'package:flutter/material.dart';

class AppView extends StatefulWidget {
  final Widget child;

  const AppView({required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [Expanded(child: widget.child)],
        // children: [NavigationBar(), Expanded(child: widget.child)],
      ),
    );
  }
}
