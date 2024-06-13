import 'package:flutter/material.dart';

class CardDetails {
  final String title;
  final String desc;
  final Widget navigateTo;

  CardDetails({
    required this.title,
    required this.desc,
    required this.navigateTo,
  });
}
