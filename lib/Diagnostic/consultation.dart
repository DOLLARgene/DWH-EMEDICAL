import 'package:emedical/components/click_on_symptome.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Consultation extends StatefulWidget {
  const Consultation({super.key});

  @override
  State<Consultation> createState() => _ConsultationState();
}

class _ConsultationState extends State<Consultation> {
  List<String> allSymptom = [];

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
        child: Column(
          children: [
            Text("Selectionnez les symptome que vous ressentez"),
            SizedBox(
              height: 20.0,
            ),
            GridView.builder(
              itemCount: allSymptom.length,
              shrinkWrap: true,
              primary: false,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemBuilder: (context, index) => ClickOnSymptome(
                content: allSymptom[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
