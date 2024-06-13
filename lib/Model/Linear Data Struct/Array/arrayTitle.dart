import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ArrayTitle extends StatelessWidget {
  String title = "Array";

  ArrayTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.aclonica(
        fontSize: 30,
      ),
    );
  }
}
