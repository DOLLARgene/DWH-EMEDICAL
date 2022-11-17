//import 'package:emedical/models/menu.dart';
import 'package:emedical/Diagnostic/hypothese.dart';
import 'package:emedical/Diagnostic/consultation.dart';
import 'package:emedical/Livraison/evolution_commande.dart';
import 'package:emedical/Livraison/livraison.dart';
import 'package:emedical/Teleconsultation/discussion.dart';
import 'package:emedical/Teleconsultation/teleconsultation.dart';
import 'package:emedical/auth/new_password.dart';
import 'package:emedical/menu/abonnement.dart';
import 'package:emedical/menu/existing_cards.dart';
import 'package:emedical/menu/helps.dart';
import 'package:emedical/menu/notifications.dart';
import 'package:emedical/menu/parametres.dart';
import 'package:emedical/menu/privacy_policy.dart';
import 'package:emedical/menu/profil.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:emedical/auth/enter_code.dart';
import 'package:emedical/auth/set_password_sms.dart';
import 'package:emedical/auth/set_password_email.dart';
import 'package:emedical/auth/forget_password.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:emedical/views/home.dart';
import 'package:emedical/auth/sign_up.dart';
import 'package:emedical/auth/login.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E_medical',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
      routes: {
        Login.routeName: (_) => const Login(),
        SignUp.routeName: (_) => const SignUp(),
        Home.routeName: (_) => const Home(),
        HomeMedical.routeName: (_) => const HomeMedical(),
        ForgetPassword.routeName: (_) => const ForgetPassword(),
        SetPasswordEmail.routeName: (_) => const SetPasswordEmail(),
        SetPasswordSms.routeName: (_) => const SetPasswordSms(),
        EnterCode.routeName: (_) => const EnterCode(),
        NewPassword.routeName: (_) => const NewPassword(),
        Consultation.routeName: (_) => const Consultation(),
        EditProfilPage.routeName: (_) => const EditProfilPage(),
        SettingsPage.routeName: (_) => SettingsPage(),
        NotificationsPage.routeName: (_) => NotificationsPage(),
        PrivacyPolicyPage.routeName: (_) => PrivacyPolicyPage(),
        HelpPage.routeName: (_) => HelpPage(),
        ExistingCard.routeName: (_) => ExistingCard(),
        Abonnement.routeName: (_) => Abonnement(),
        Hypothese.routeName: (_) => Hypothese(),
        Livraison.routeName: (_) => Livraison(),
        Teleconsultation.routeName: (_) => Teleconsultation(),
        Discussion.routeName: (_) => Discussion(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(Login.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Icon(
            Icons.health_and_safety_outlined,
            color: Colors.black,
            size: 150,
          ),
        ),
      ),
    );
  }
}
