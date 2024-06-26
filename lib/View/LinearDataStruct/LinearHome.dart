import 'package:flutter/material.dart';
import 'package:grokking_dsa/Model/AppTitle/appTitle.dart';
import 'package:grokking_dsa/Model/Linear%20Data%20Struct/Card.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Array/arrayHome.dart';
import 'package:grokking_dsa/View/LinearDataStruct/LinearDataStructElement/LinearDataStructElem.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Linked%20list/linkedListHome.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Queues/queuesHome.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Stack/stackHome.dart';
import 'package:grokking_dsa/View/LinearDataStruct/String/stringHome.dart';

class LinearHome extends StatelessWidget {
  const LinearHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CardDetails> cardData = [
      CardDetails(
          title: "Array",
          desc: "Let's dive into arrays from scratch to advanced.",
          navigateTo: const ArrayHome()),
      CardDetails(
          title: "Linked List",
          desc:
              "Let's explore linked lists from the basics to advanced concepts.",
          navigateTo: const Linkedlisthome()),
      CardDetails(
          title: "Stack",
          desc:
              "Let's delve into stacks from fundamental principles to advanced techniques.",
          navigateTo: const StackHome()),
      CardDetails(
          title: "Queues",
          desc:
              "Let's uncover queues from the ground up to advanced applications.",
          navigateTo: const Queues()),
      CardDetails(
          title: "String",
          desc:
              "Let's examine strings from introductory concepts to advanced manipulations.",
          navigateTo: const StringHome()),
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
            navigateTo: cardData[index].navigateTo,
          );
        },
      ),
    );
  }
}
