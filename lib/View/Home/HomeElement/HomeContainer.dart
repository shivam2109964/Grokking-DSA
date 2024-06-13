import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Homepage%20Model/LinearDataStruct.dart';
import 'package:grokking_dsa/Model/MediaQuary/mediaQuary.dart';
import 'package:grokking_dsa/Model/Overall/ClickHereButton.dart';
import 'package:grokking_dsa/View/LinearDataStruct/LinearHome.dart';

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
                    textInLinearDataStrcut.descReturn,
                    style: GoogleFonts.inter(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LinearHome(),
                  ),
                );
              },
              child: Text(clickHereButton.text),
            ),
          ],
        ),
      ),
    );
  }
}
