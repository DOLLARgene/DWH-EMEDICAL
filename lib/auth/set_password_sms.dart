import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:emedical/auth/enter_code.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import 'package:gap/gap.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../views/home_medical.dart';

class SetPasswordSms extends StatefulWidget {
  static String routeName = "/set_password_sms";
  const SetPasswordSms({super.key});

  @override
  State<SetPasswordSms> createState() => _SetPasswordSmsState();
}

class _SetPasswordSmsState extends State<SetPasswordSms> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mot de passe oublié',
      home: Auth(),
    );
  }
}

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  /* @override
  void initState() {
    super.initState();
    listenSms();
  }
  */

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Mot de passe oublié",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Gap(40.0),
                CustomTextFormField(
                  prefixIcon: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "+229",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  htinText: "Telephone",
                  inputType: InputType.text,
                  inputFormaters: [FilteringTextInputFormatter.digitsOnly],
                ),
                Gap(35.0),
                CustomButton(
                  buttonContent: "Envoyez",
                  action: () {
                    Navigator.of(context).pushNamed(EnterCode.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextButton(
                  onPressed: () {
                    //final signcode = await SmsAutoFill().getAppSignature;
                    //print(signcode);
                    //Navigator.of(context).pushNamed(EnterCode.routeName);
                  },
                  child: Text('Code non reçu? Renvoyez'),
                ),
                Gap(25.0),
                Text(
                  "le code vas expiré dans 5 minutes",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                    fontFamily: montserratFamily,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void listenSms() async {
    await SmsAutoFill().listenForCode;
  }
}
