import 'dart:html';

import 'package:emedical/components/click_on_symptome.dart';
import 'package:emedical/components/custom_button.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:emedical/Diagnostic/hypothese.dart';
import 'package:emedical/menu/abonnement.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Livraison extends StatefulWidget {
  static String routeName = "/livraison";
  const Livraison({super.key});

  @override
  State<Livraison> createState() => _LivraisonState();
}

class _LivraisonState extends State<Livraison> {
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
          "Livraison de produits pharmaceutiques",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 250.0, horizontal: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Souhaitez-vous béneficier du service de livraison de produits pharmaceutiques",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.0,
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
                    color: Colors.blueAccent,
                    fontSize: 25.0,
                    fontFamily: montserratFamily,
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
              CustomButton(
                buttonContent: "valider",
                action: () {
                  Navigator.of(context).pushNamed(Abonnement.routeName);
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


// import 'dart:async';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';

/*void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home: FlutterDemo(storage: CounterStorage()),
    ),
  );
}*/

// class Livraison {
//   static String routeName = "/livraison";
//   Future<String> get _localPath async {
//     final directory = await getApplicationDocumentsDirectory();

//     return directory.path;
//   }

//   Future<File> get _localFile async {
//     final path = await _localPath;
//     return File('$path/counter.txt');
//   }

//   Future<int> readCounter() async {
//     try {
//       final file = await _localFile;

//       // Read the file
//       final contents = await file.readAsString();

//       return int.parse(contents);
//     } catch (e) {
//       // If encountering an error, return 0
//       return 0;
//     }
//   }

//   Future<File> writeCounter(int counter) async {
//     final file = await _localFile;

//     // Write the file
//     return file.writeAsString('$counter');
//   }
// }

// class FlutterDemo extends StatefulWidget {
//   const FlutterDemo({super.key, required this.storage});

//   final Livraison storage;

//   @override
//   State<FlutterDemo> createState() => _FlutterDemoState();
// }

// class _FlutterDemoState extends State<FlutterDemo> {
//   int _counter = 0;

//   @override
//   void initState() {
//     super.initState();
//     widget.storage.readCounter().then((value) {
//       setState(() {
//         _counter = value;
//       });
//     });
//   }

//   Future<File> _incrementCounter() {
//     setState(() {
//       _counter++;
//     });

//     // Write the variable as a string to the file.
//     return widget.storage.writeCounter(_counter);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reading and Writing Files'),
//       ),
//       body: Center(
//         child: Text(
//           'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
