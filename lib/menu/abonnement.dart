import 'package:carousel_slider/carousel_slider.dart';
import 'package:emedical/helpers/constant.dart';
import 'package:flutter/material.dart';
import 'package:emedical/views/home_medical.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class Abonnement extends StatefulWidget {
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
        title: Text("Choisir une carte existant"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView.separated(
            itemBuilder: (context, index) {
              Icon icon;
              Text text;
              switch (index) {
                case 0:
                  icon = Icon(
                    Icons.add_circle,
                    color: Colors.blue,
                  );
                  text = Text("Payer via une nouvelle carte");
                  break;
                case 1:
                  icon = Icon(
                    Icons.credit_card,
                    color: Colors.blue,
                  );
                  text = Text("Payer via une carte existante");
                  break;
              }
              return InkWell(
                onTap: () {
                  onItemPress(context, index);
                },
                child: ListTile(
                  title: text,
                  leading: icon,
                ),
              );
            },
            separatorBuilder: (context, index) => Divider(color: Colors.blue),
            itemCount: 2),
      ),
    );
  }
}
