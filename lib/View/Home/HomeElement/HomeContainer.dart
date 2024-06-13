import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Homepage%20Model/LinearDataStruct.dart';
import 'package:grokking_dsa/Model/MediaQuary/mediaQuary.dart';
import 'package:grokking_dsa/Model/Overall/ClickHereButton.dart';

class LinearDataStruct extends StatelessWidget {
  const LinearDataStruct({super.key});

  @override
  Widget build(BuildContext context) {
    TextInLinearDataStrcut textInLinearDataStrcut = TextInLinearDataStrcut();
    ClickHereButton clickHereButton = ClickHereButton();
    return Container(
      height: ScreenSize.height(context) * 0.35,
      width: ScreenSize.width(context) * 0.9,
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              textInLinearDataStrcut.titleReturn,
              style: GoogleFonts.aBeeZee(
                fontSize: 25,
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                Text(
                  textInLinearDataStrcut.descReturn,
                  style: GoogleFonts.inter(fontSize: 15),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(clickHereButton.text),
            ),
          ],
        ),
      ),
    );
  }
}
