import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Homepage%20Model/NonLinearDataStruct.dart';
import 'package:grokking_dsa/Model/MediaQuary/mediaQuary.dart';
import 'package:grokking_dsa/Model/Overall/ClickHereButton.dart';

class NonLinearDataStruct extends StatelessWidget {
  const NonLinearDataStruct({super.key});

  @override
  Widget build(BuildContext context) {
    TextInNonLinearDataStrcut textInNonLinearDataStrcut = TextInNonLinearDataStrcut();
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
              textInNonLinearDataStrcut.titleReturn,
              style: GoogleFonts.aBeeZee(
                fontSize: 25,
              ),
            ),
            const Divider(
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Text(
                    textInNonLinearDataStrcut.descReturn,
                    style: GoogleFonts.inter(fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
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
