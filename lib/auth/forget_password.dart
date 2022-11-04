import 'package:emedical/auth/set_password_sms.dart';
import 'package:emedical/auth/set_password_email.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import '../views/home_medical.dart';

class ForgetPassword extends StatelessWidget {
  static String routeName = "/forget_password";
  const ForgetPassword({super.key});

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
                "assets/imgs/doctor.jpg",
                height: 600,
                width: 800,
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Veuillez selectionnez par quelle moyen vous souhaitez changer votre mot de passe",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    fontFamily: montserratFamily),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SetPasswordEmail.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.mail),
                      Text(
                        'Via adrresse mail',
                        style: TextStyle(
                          fontFamily: montserratFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(SetPasswordSms.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.message),
                      Text(
                        'Via SMS',
                        style: TextStyle(
                          fontFamily: montserratFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
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
