import 'package:emedical/menu/abonnement.dart';
import 'package:flutter/material.dart';

class ExistingCard extends StatefulWidget {
  const ExistingCard({super.key});

  @override
  State<ExistingCard> createState() => _ExistingCardState();
}

class _ExistingCardState extends State<ExistingCard> {
  List cards = [
    {
      'cardNumber': '4242424242424242',
      'ExpiryDate': '84/24',
      'cardHolderName': 'Mahummad Ahsan Ayaz',
      'cvvCode': '424',
      'showBackView': false,
    },
    {
      'cardNumber': '35660002360505',
      'expiryDate': '84/23',
      'cardHolderName': 'Tracer',
      'cvvCode': '123',
      'showBackView': false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choisir une carte existant"),
      ),
    );
  }
}
