import 'package:emedical/menu/abonnement.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter/material.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:emedical/menu/abonnement.dart';

class Hypothese extends StatefulWidget {
  static String routeName = '/hypothese';
  const Hypothese({super.key});

  @override
  State<Hypothese> createState() => _HypotheseState();
}

class _HypotheseState extends State<Hypothese> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            FontAwesomeIcons.chevronLeft,
          ),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Maladie probable",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 200, right: 16),
        child: Column(
          children: [
            Center(
              child: Text(
                "Souhaiteriez etre dirigée vers un centre traitant la maladie ?",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 68, 143, 241),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(Abonnement.routeName);
              },
              child: Text(
                "oui je veux bien",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color.fromARGB(0, 68, 143, 241),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(HomeMedical.routeName);
              },
              child: Text(
                "Non, merci",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25.0,
                  fontFamily: montserratFamily,
                ),
              ),
            ),
            /* Column(
              children: [
              ],
            ),*/
          ],
        ),
      ),
    );
  }
}
