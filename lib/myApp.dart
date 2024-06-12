import 'package:flutter/material.dart';
import 'package:grokking_dsa/View/Home/myHomepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:const MyHomePage(),
    );
  }
}
