import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatefulWidget {
  static String routeName = '/privacy_policy';
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Privacy Policy Page"),
      ),
    );
  }
}
