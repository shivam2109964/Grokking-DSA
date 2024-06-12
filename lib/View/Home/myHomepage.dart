import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/AppTitle/appTitle.dart';
import 'package:grokking_dsa/Model/MediaQuary/mediaQuary.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppTitle(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: ScreenSize.width(context) * 0.9,
              height: ScreenSize.width(context) * 0.7,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Linear Data Structure",
                      style: GoogleFonts.aclonica(
                        fontSize: 25,
                      ),
                    ),
                    const Wrap(
                      direction: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 25, left: 25),
                          child: Text(
                            "lknfvklfngrdnfgfdgnvrfgnvrfgnioernfvoiernfioerfnvoirenfviorenfviornvioernfvrieofgnv0 ",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Click here"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: ScreenSize.width(context) * 0.9,
              height: ScreenSize.width(context) * 0.7,
              decoration: const BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
