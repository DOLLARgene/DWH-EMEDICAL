import 'dart:io';
import 'package:image_picker/image_picker.dart';
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
  XFile? image;

  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
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
          "Livraison de produits pharmaceutiques",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Souhaitez-vous béneficier du service de livraison de produits pharmaceutiques",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 20.0,
                  //fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              /*TextButton(
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
                  "oui, je veux bien",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 25.0,
                    fontFamily: montserratFamily,
                  ),
                ),
              ),*/
              SizedBox(
                height: 70.0,
              ),
              Text(
                "Si vous tenez à vous fair livrez vos produit pharmaceutique,alors veullez uploader le fichier  scanner de votre ordornanace",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: montserratFamily,
                  fontSize: 20.0,
                  //fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  myAlert();
                },
                child: Text('Upload Photo'),
              ),
              SizedBox(
                height: 10,
              ),
              //if image not null show the image
              //if image null show text
              image != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          //to show image, you type like this.
                          File(image!.path),
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                          height: 300,
                        ),
                      ),
                    )
                  : Text(
                      "No Image",
                      style: TextStyle(fontSize: 20),
                    ),
              SizedBox(
                height: 60.0,
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
              SizedBox(
                height: 90.0,
              ),
              CustomButton(
                buttonContent: "valider",
                action: () {
                  Navigator.of(context).pushNamed(Abonnement.routeName);
                },
                style: ButtonStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   XFile? image;

//   final ImagePicker picker = ImagePicker();

//   //we can upload image from camera or from gallery based on parameter
//   Future getImage(ImageSource media) async {
//     var img = await picker.pickImage(source: media);

//     setState(() {
//       image = img;
//     });
//   }

//   //show popup dialog
//   void myAlert() {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//             title: Text('Please choose media to select'),
//             content: Container(
//               height: MediaQuery.of(context).size.height / 6,
//               child: Column(
//                 children: [
//                   ElevatedButton(
//                     //if user click this button, user can upload image from gallery
//                     onPressed: () {
//                       Navigator.pop(context);
//                       getImage(ImageSource.gallery);
//                     },
//                     child: Row(
//                       children: [
//                         Icon(Icons.image),
//                         Text('From Gallery'),
//                       ],
//                     ),
//                   ),
//                   ElevatedButton(
//                     //if user click this button. user can upload image from camera
//                     onPressed: () {
//                       Navigator.pop(context);
//                       getImage(ImageSource.camera);
//                     },
//                     child: Row(
//                       children: [
//                         Icon(Icons.camera),
//                         Text('From Camera'),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Upload Image'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 myAlert();
//               },
//               child: Text('Upload Photo'),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             //if image not null show the image
//             //if image null show text
//             image != null
//                 ? Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.file(
//                         //to show image, you type like this.
//                         File(image!.path),
//                         fit: BoxFit.cover,
//                         width: MediaQuery.of(context).size.width,
//                         height: 300,
//                       ),
//                     ),
//                   )
//                 : Text(
//                     "No Image",
//                     style: TextStyle(fontSize: 20),
//                   )
//           ],
//         ),
//       ),
//     );
//   }
// }
