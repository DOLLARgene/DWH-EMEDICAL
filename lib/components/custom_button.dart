import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final String buttonContent;
  final Function() action;
  const CustomButton({
    Key? key,
    required this.buttonContent,
    required this.action,
    required ButtonStyle style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      child: Text(buttonContent),
      style: ElevatedButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
