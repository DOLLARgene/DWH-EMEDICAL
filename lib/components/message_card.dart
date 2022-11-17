import 'dart:html';

import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  final String content;
  const MessageCard({super.key, required this.content});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(widget.content),
        ),
      ),
    );
  }
}
