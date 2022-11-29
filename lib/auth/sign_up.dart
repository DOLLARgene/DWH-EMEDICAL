import 'dart:ui';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static String routeName = "/sign-up";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue.shade100,
          body: Center(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/imgs/IME.jpg"),
            //     fit: BoxFit.cover,
            //   ),
            // ),
            //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30.0),
                  Image(
                    image: AssetImage("assets/imgs/logo_rose.png"),
                    width: 250,
                    height: 200,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    "Inscription",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: montserratFamily,
                    ),
                  ),
                  SizedBox(height: 50.0),
                  CustomTextFormField(
                    htinText: "Nom",
                    inputType: InputType.text,
                  ),
                  SizedBox(height: 25.0),
                  CustomTextFormField(
                    htinText: "Prenoms",
                    inputType: InputType.text,
                  ),
                  Gap(25.0),
                  CustomTextFormField(
                    htinText: "email",
                    inputType: InputType.text,
                  ),
                  Gap(25.0),
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
                  Gap(25.0),
                  CustomTextFormField(
                    htinText: "mot de passe",
                    inputType: InputType.password,
                  ),
                  Gap(25.0),
                  CustomTextFormField(
                    htinText: "Confirmez votre mot de passe",
                    inputType: InputType.password,
                  ),
                  Gap(50.0),
                  CustomButton(
                    buttonContent: "Valider",
                    action: () {
                      Navigator.of(context).pushNamed(HomeMedical.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 30.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
