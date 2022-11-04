import 'package:emedical/auth/new_password.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import 'package:sms_autofill/sms_autofill.dart';
import '../views/home_medical.dart';

class EnterCode extends StatefulWidget {
  static String routeName = "/enter_code";
  const EnterCode({super.key});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Entrez le code de verification ici",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 30.0),
            Text(
              "un code de verification est envoyé au +229********",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val) {
                  print(val);
                },
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              "Renvoyez le code",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 8.0,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30.0,
            ),
            CustomButton(
              buttonContent: "Continuer",
              action: () {
                Navigator.of(context).pushNamed(NewPassword.routeName);
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
