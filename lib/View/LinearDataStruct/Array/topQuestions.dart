import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/View/LinearDataStruct/Array/resultDialogBox.dart';

class QuestionsInArray extends StatefulWidget {
  const QuestionsInArray({super.key});

  @override
  State<QuestionsInArray> createState() => QuestionsInArrayState();
}

class QuestionsInArrayState extends State<QuestionsInArray> {
  TextEditingController textEditingController = TextEditingController();
  ResultDialogBox resultDialogBox = ResultDialogBox();
  List<int?> data = [20, 25, 35, 51, 15, 45, 70, 5];

  void removeAll() {
    setState(() {
      for (int i = 0; i <= data.length - 1; i++) {
        data[i] = null;
      }
    });
  }

  List<int?> findPeekValue() {
    List<int?> resultStoreData = [];
    //check the empty list
    if (data.isEmpty) {
      return [];
    }
    //check the first value
    if (data[0]! > data[1]!) {
      resultStoreData.add(data[0]);
    }

    //check the middle value
    for (int i = 1; i < data.length - 1; i++) {
      if (data[i]! > data[i - 1]! && data[i]! > data[i + 1]!) {
        resultStoreData.add(data[i]);
      }
    }

    //check the last value
    if (data[data.length - 1]! > data[data.length - 2]!) {
      resultStoreData.add(data[data.length - 1]);
    }
    return resultStoreData;
  }

  List<int?> get sendCheckResult => findPeekValue();

  void showDialogBox() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return const ResultDialogBox();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              Text(
                "1. Find peak element. \nThe problem involves finding the peak number within an array. A peak element is an element that has a value greater than its neighbors on both sides.",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: data[index] != null ? Colors.blue : Colors.grey,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      data[index]?.toString() ?? 'null',
                      style: GoogleFonts.aBeeZee(fontSize: 25),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          children: [
            MaterialButton(
              color: Colors.blueGrey,
              onPressed: showDialogBox,
              child: Text(
                "Check Ans",
                style: GoogleFonts.aBeeZee(
                  fontSize: 20,
                ),
              ),
            ),
          ],
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
            )
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
                  "Add Custom No",
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
        )
      ],
    );
  }
}
