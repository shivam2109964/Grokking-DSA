import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AppTitle extends StatelessWidget {
  String title = "Grokking - DSA";

  AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.aclonica(
        fontSize: 20,
      ),
    );
  }
}
