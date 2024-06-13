import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Linear%20Data%20Struct/Card.dart';
import 'package:grokking_dsa/Model/Overall/ClickHereButton.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Array/arrayHome.dart';

class CustomizeCard extends StatelessWidget {
  final CardDetails cardDetails;
  const CustomizeCard({super.key, required this.cardDetails});

  @override
  Widget build(BuildContext context) {
    ClickHereButton clickHereButton = ClickHereButton();

    return Stack(
      alignment: Alignment.bottomRight,
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 150,
            width: 600,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.orangeAccent,
            ),
            padding: const EdgeInsets.only(left: 32, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cardDetails.title,
                  style: GoogleFonts.abhayaLibre(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cardDetails.desc,
                  style: GoogleFonts.inconsolata(fontSize: 15),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -5,
          right: 8,
          child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ArrayHome(),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 26,
                vertical: 16,
              ),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                  color: Colors.white54),
              child: Text(clickHereButton.text),
            ),
          ),
        ),
      ],
    );
  }
}
