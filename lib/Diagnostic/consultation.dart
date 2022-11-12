import 'package:emedical/components/click_on_symptome.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:emedical/Diagnostic/hypothese.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Consultation extends StatefulWidget {
  static String routeName = '/consultation';
  const Consultation({super.key});

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  List<String> allSymptom = [];

  List<String> paludisme = [];
  List<String> covid = [];
  List<String> cancer = [];

  @override
  void initState() {
    super.initState();
    listMaladie.forEach((element) {
      allSymptom.addAll(element.deseaseSymptom);
    });
  }

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
          "Consultation",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 18.0,
              ),
              Text(
                "Selectionnez les symptomes que vous ressentez",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontFamily: montserratFamily,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 18.0,
              ),
              Column(
                children: List.generate(
                  allSymptom.length,
                  (index) => ClickOnSymptome(
                    content: allSymptom[index],
                    getValue: (isActive) {
                      print("hello");
                      print(isActive);
                      if (isActive == true) {
                        listMaladie.forEach((e) {
                          print(e.desease.contains(allSymptom[index]));
                          print(allSymptom[index]);
                          print(e.desease.contains(allSymptom[index]));
                          if (e.desease.contains(allSymptom[index]) &&
                              e.id == 1) {
                            paludisme.add(allSymptom[index]);
                          }
                          if (e.desease.contains(allSymptom[index]) &&
                              e.id == 2) {
                            covid.add(allSymptom[index]);
                          }
                          if (e.desease.contains(allSymptom[index]) &&
                              e.id == 3) {
                            cancer.add(allSymptom[index]);
                          }
                          //print(allSymptom);
                        });

                        setState(() {
                          print(paludisme);
                          print(covid);
                          print(cancer);
                        });
                      }
                    },
                  ),
                ),
              ),
              CustomButton(
                buttonContent: "valider",
                action: () {
                  Navigator.of(context).pushNamed(Hypothese.routeName);
                },
                style: ButtonStyle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
