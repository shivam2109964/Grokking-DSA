import 'package:flutter/material.dart';
import 'package:grokking_dsa/View/Home/myHomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
