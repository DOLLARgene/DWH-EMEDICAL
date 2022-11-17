import 'package:emedical/components/doctor_card.dart';
import 'package:emedical/components/doctor_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Teleconsultation extends StatefulWidget {
  static String routeName = "/teleconsultaion";
  const Teleconsultation({super.key});

  @override
  State<Teleconsultation> createState() => _TeleconsultationState();
}

class _TeleconsultationState extends State<Teleconsultation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            FontAwesomeIcons.chevronLeft,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(Teleconsultation.routeName);
          },
        ),
        title: Text(
          "Teleconsultation",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DoctorCard(
              fullName: "koffi yao",
              specialite: "ophtalmo",
              hopital: "clinique de l'union",
            ),
            DoctorCard(
              fullName: "koffi adriss",
              specialite: "chirugien",
              hopital: "Calavi_zone",
            ),
            DoctorCard(
              fullName: "Ali mamadou",
              specialite: "dentiste",
              hopital: "gozo",
            ),
            DoctorCard(
              fullName: "Dossou humogene",
              specialite: "Generaliste",
              hopital: "Zohou regol",
            ),
            DoctorCard(
              fullName: "KOLLI marie",
              specialite: "gynecologue",
              hopital: "Kolimadou",
            ),
            DoctorCard(
              fullName: "koffi Astride",
              specialite: "Generaliste",
              hopital: "Zohou regol",
            ),
          ],
        ),
      ),
    );
  }
}
