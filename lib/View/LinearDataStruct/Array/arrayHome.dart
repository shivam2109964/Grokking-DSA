import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Linear%20Data%20Struct/Array/arrayTitle.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Array/topQuestions.dart';

class ArrayHome extends StatefulWidget {
  const ArrayHome({super.key});

  @override
  State<ArrayHome> createState() => _ArrayHomeState();
}

class _ArrayHomeState extends State<ArrayHome> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  Random random = Random();

  List<String> arrayData = List.filled(10, 'null');

  void insert() {
    int index = arrayData.indexOf('null');
    if (index != -1 && textEditingController.text.isNotEmpty) {
      setState(() {
        arrayData[index] = textEditingController.text;
        textEditingController.clear();
      });
    }
  }

  void removeLast() {
    int index = arrayData.lastIndexWhere((element) => element != 'null');
    if (index != -1) {
      setState(() {
        arrayData[index] = 'null';
      });
    }
  }

  void removeAt() {
    int index;
    try {
      index = int.parse(textEditingController1.text);
    } catch (e) {
      // Handle parsing error
      print('Invalid index: ${e.toString()}');
      return;
    }

    if (index < 0 || index >= arrayData.length) {
      // Handle out-of-range index
      print('Index out of range');
      return;
    }

    if (arrayData[index] == 'null') {
      // Handle empty slot
      print('No element to remove at index $index');
      return;
    }

    setState(() {
      // Shift elements to the left
      for (int i = index; i < arrayData.length - 1; i++) {
        arrayData[i] = arrayData[i + 1];
      }
      // Set the last element to 'null'
      arrayData[arrayData.length - 1] = 'null';
      textEditingController1.clear();
    });
  }

  void removeFirst() {
    setState(() {
      for (int i = 0; i < arrayData.length - 1; i++) {
        arrayData[i] = arrayData[i + 1];
        arrayData[arrayData.length - 1] = 'null';
      }
    });
  }

  void removeRandom() {
    setState(() {
      int randomIndcies = random.nextInt(9);
      for (int i = randomIndcies; i < arrayData.length - 1; i++) {
        arrayData[i] = arrayData[i + 1];
        arrayData[arrayData.length - 1] = 'null';
      }
    });
  }

  void removeAll() {
    setState(() {
      for (int i = 0; i <= arrayData.length - 1; i++) {
        arrayData[i] = 'null';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ArrayTitle(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    "Grocery Shopping List",
                    style: GoogleFonts.abyssinicaSil(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                direction: Axis.horizontal,
                children: [
                  Text(
                    "Imagine you have a list of items you need to buy at the grocery store. This list helps you keep track of everything you need in one place. In programming, an array is like this list. It's a way to store multiple items (or elements) of the same type (like all fruits or all vegetables) under one name. Each item in the list (or array) has a specific position, just like each item on your shopping list has a number or place in the order. \nHere is a visual representation of array operations. We create 10 empty boxes and manipulate data using basic array operations.",
                    style: GoogleFonts.aBeeZee(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 90,
                        decoration: BoxDecoration(
                          color: arrayData[index] == 'null'
                              ? Colors.grey
                              : Colors.blue,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            arrayData[index],
                      style: GoogleFonts.aBeeZee(fontSize: 25),
                    ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Operations in Array",
                    style: GoogleFonts.abyssinicaSil(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Adding element",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: TextField(
                              controller: textEditingController,
                              style: GoogleFonts.aBeeZee(fontSize: 17),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(2)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: insert,
                            child: Text(
                              "Insert",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Remove last",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: removeLast,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Remove at",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: TextField(
                              controller: textEditingController1,
                              style: GoogleFonts.aBeeZee(fontSize: 17),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                              ),
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(2)
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: removeAt,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Remove first",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: removeFirst,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Remove random",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: removeFirst,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 125,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "Remove all",
                            style: GoogleFonts.aBeeZee(fontSize: 18),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: SizedBox(
                            height: 40,
                            width: 60,
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: MaterialButton(
                            color: Colors.blue,
                            onPressed: removeAll,
                            child: Text(
                              "Remove",
                              style: GoogleFonts.aBeeZee(
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Top 10 Questions In Array",
                    style: GoogleFonts.abyssinicaSil(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const QuestionsInArray()
            ],
          ),
        ),
      ),
    );
  }
}
