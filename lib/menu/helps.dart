import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  static String routeName = "/helps";
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("En quoi pourrions-nous vous aidez?"),
      ),
    );
  }
}
