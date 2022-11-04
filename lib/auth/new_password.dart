import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import 'package:sms_autofill/sms_autofill.dart';
import '../views/home_medical.dart';

class NewPassword extends StatefulWidget {
  static String routeName = "\new_password";
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 130, 248),
          title: Text(
            "Mot de passe oublié",
            style: TextStyle(color: Colors.white, fontFamily: montserratFamily),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/imgs/phonendoscope.svg",
                height: 200,
                width: 300,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Créer votre nouveau mot de passe",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontFamily: montserratFamily),
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomTextFormField(
                htinText: 'Entrez votre nouveau mot de passe',
                inputType: InputType.password,
              ),
              SizedBox(
                height: 25.0,
              ),
              CustomTextFormField(
                htinText: 'Confirmez votre nouveau mot de passe',
                inputType: InputType.password,
              ),
              SizedBox(
                height: 30.0,
              ),
              CustomButton(
                buttonContent: "Continuer",
                action: () {
                  Navigator.of(context).pushNamed(HomeMedical.routeName);
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
