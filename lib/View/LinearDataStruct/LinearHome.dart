import 'package:flutter/material.dart';
import 'package:grokking_dsa/Model/AppTitle/appTitle.dart';
import 'package:grokking_dsa/Model/Linear%20Data%20Struct/Card.dart';
import 'package:grokking_dsa/View/LinearDataStruct/LinearDataStructElement/LinearDataStructElem.dart';

class LinearHome extends StatelessWidget {
  const LinearHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CardDetails> cardData = [
      CardDetails(
        title: "Array",
        desc: "Let's dive into arrays from scratch to advanced.",
      ),
      CardDetails(
        title: "Linked List",
        desc:
            "Let's explore linked lists from the basics to advanced concepts.",
      ),
      CardDetails(
        title: "Stack",
        desc:
            "Let's delve into stacks from fundamental principles to advanced techniques.",
      ),
      CardDetails(
        title: "Queues",
        desc:
            "Let's uncover queues from the ground up to advanced applications.",
      ),
      CardDetails(
        title: "String",
        desc:
            "Let's examine strings from introductory concepts to advanced manipulations.",
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: AppTitle(),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CustomizeCard(
            cardDetails: cardData[index],
          );
        },
      ),
    );
  }
}
