import 'package:flutter/material.dart';

class Discuss {
  final int id;
  final String idRecever;
  final String idSender;
  final String message;

  Discuss(
      {required this.id,
      required this.idRecever,
      required this.idSender,
      required this.message});
}
