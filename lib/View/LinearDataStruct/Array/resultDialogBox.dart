import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Array/topQuestions.dart';

class ResultDialogBox extends StatefulWidget {
  const ResultDialogBox({super.key});

  @override
  State<ResultDialogBox> createState() => _ResultDialogBoxState();
}

class _ResultDialogBoxState extends State<ResultDialogBox> {
  QuestionsInArrayState questionsInArrayState = QuestionsInArrayState();
  List<int?> receive = QuestionsInArrayState().findPeekValue();
  @override
  Widget build(BuildContext context) {
    AlertDialog alertDialog = AlertDialog(
      backgroundColor: Colors.white,
      content: Container(
        height: 100,
        width: 150,
        child: Column(
          children: [
            Text(
              "Result Data",
              style: GoogleFonts.abyssinicaSil(
                fontSize: 25,
              ),
            ),
            const Divider(),
            Text(
              receive.toString(),
              style: GoogleFonts.abyssinicaSil(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
      child: alertDialog,
    );
  }
}
