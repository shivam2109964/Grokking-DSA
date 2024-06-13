import 'package:flutter/material.dart';
import 'package:grokking_dsa/Model/AppTitle/appTitle.dart';
import 'package:grokking_dsa/View/Home/HomeElement/HomeContainer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: AppTitle(),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              LinearDataStruct()
            ],
          ),
        ));
  }
}
