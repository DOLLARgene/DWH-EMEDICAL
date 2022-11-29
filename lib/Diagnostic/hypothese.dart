import 'package:emedical/Diagnostic/consultation.dart';
import 'package:emedical/Teleconsultation/teleconsultation.dart';
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
      backgroundColor: Color.fromARGB(255, 252, 250, 250),
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
        padding: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/imgs/logo_rose.png"),
              width: 250,
              height: 200,
            ),
            SizedBox(
              height: 30,
            ),
            Card(
              elevation: 10,
              shadowColor: Colors.pink.shade100,
              child: Text(
                "Vue les symptomes que vous presentez, il est probable que vous souffrez du Paludisme",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: Color.fromARGB(255, 81, 24, 24),
                  shadows: [
                    BoxShadow(
                        color: Color.fromARGB(255, 250, 174, 201),
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        blurStyle: BlurStyle.solid),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Column(
              children: [
                Text(
                  "Souhaiteriez être dirigé vers un centre de santé adapter et à proximité de votre location?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.blue,
                    child: Text(
                      "oui je veux bien",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.0,
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
                  child: Card(
                    elevation: 8,
                    shadowColor: Colors.pink.shade100,
                    child: Text(
                      "Non, merci",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontFamily: montserratFamily,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Column(
            //   children: [
            //     Text(
            //       "Souhaiteriez être proceder à une teleconsultation avec un medecin spécialiste ou generaliste ?",
            //       style: TextStyle(
            //         fontSize: 28,
            //         fontWeight: FontWeight.w800,
            //         color: Colors.blue,
            //       ),
            //     ),
            //     SizedBox(
            //       height: 44.0,
            //     ),
            //     TextButton(
            //       style: TextButton.styleFrom(
            //         backgroundColor: Color.fromARGB(0, 68, 143, 241),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       onPressed: () {
            //         Navigator.of(context).pushNamed(Teleconsultation.routeName);
            //       },
            //       child: Text(
            //         "oui je souhaite bien",
            //         style: TextStyle(
            //           color: Colors.black87,
            //           fontSize: 25.0,
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 35.0,
            //     ),
            //     TextButton(
            //       style: TextButton.styleFrom(
            //         backgroundColor: Color.fromARGB(0, 68, 143, 241),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20),
            //         ),
            //       ),
            //       onPressed: () {
            //         Navigator.of(context).pushNamed(HomeMedical.routeName);
            //       },
            //       child: Text(
            //         "Non, merci",
            //         style: TextStyle(
            //           color: Colors.black87,
            //           fontSize: 25.0,
            //           fontFamily: montserratFamily,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
