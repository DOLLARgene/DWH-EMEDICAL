import 'package:carousel_slider/carousel_slider.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:emedical/models/item_suscribe.dart';
import 'package:flutter/material.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Abonnement extends StatefulWidget {
  static String routeName = "/abonnement";
  const Abonnement({super.key});

  @override
  State<Abonnement> createState() => _AbonnementState();
}

class _AbonnementState extends State<Abonnement> {
  onItemPress(BuildContext context, int index) {
    switch (index) {
      case 0:
        //payer avec une nouvelle carte
        break;
      case 1:
        Navigator.pushNamed(context, '/existing_cards');
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  onItemPress(context, index);
                },
                child: ListTile(
                  title: Text(contentSucribe[index].content),
                  leading: Icon(contentSucribe[index].icon),
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(color: Colors.blue),
            itemCount: 2),
      ),
    );
  }
}
