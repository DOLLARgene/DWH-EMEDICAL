import 'dart:html';

import 'package:flutter/material.dart';
import 'package:emedical/models/Deasise_cathegory.dart';

class ClickOnSymptome extends StatefulWidget {
  final String content;
  final Function(bool isACtive) getValue;
  const ClickOnSymptome(
      {super.key, required this.content, required this.getValue});

  @override
  State<ClickOnSymptome> createState() => _ClickOnSymptomeState();
}

class _ClickOnSymptomeState extends State<ClickOnSymptome> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value!;
                widget.getValue(isActive);
              });
            }),
        Text(widget.content),
        //Symptom();
      ],
    );
  }
}
