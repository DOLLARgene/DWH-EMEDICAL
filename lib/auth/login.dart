import 'package:emedical/auth/forget_password.dart';
import 'package:emedical/auth/sign_up.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/components/custom_textformfield.dart';
import 'package:emedical/helpers/constant.dart';
import "package:flutter/material.dart";
import 'package:gap/gap.dart';

import '../views/home_medical.dart';

class Login extends StatelessWidget {
  static String routeName = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink.shade100,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Text(
                "Connexion",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28.0,
                    fontFamily: montserratFamily,
                    fontWeight: FontWeight.w900),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 30.0),
                  Image(
                    image: AssetImage("assets/imgs/logo_emedical.png"),
                    width: 250,
                    height: 200,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  CustomTextFormField(
                    htinText: 'E-mail',
                  ),
                  SizedBox(height: 30.0),
                  CustomTextFormField(
                    htinText: 'Mot de passe',
                    inputType: InputType.password,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ForgetPassword.routeName);
                      },
                      child: Text(
                        'Mot de passe oublié ?',
                        style: TextStyle(
                          fontFamily: montserratFamily,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                    buttonContent: "Connexion",
                    action: () {
                      Navigator.of(context).pushNamed(HomeMedical.routeName);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 30.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Ou"),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    buttonContent: "Connexion avec Google",
                    action: () {},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 25.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SignUp.routeName);
                },
                child: Text('Pas de compte? Inscrivez-vous.'),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
              Gap(20),
            ],
          ),
        ),
      ),
    );
  }
}
