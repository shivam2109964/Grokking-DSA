import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grokking_dsa/Model/Linear%20Data%20Struct/Array/arrayTitle.dart';

class ArrayHome extends StatefulWidget {
  const ArrayHome({super.key});

  @override
  State<ArrayHome> createState() => _ArrayHomeState();
}

class _ArrayHomeState extends State<ArrayHome> {
  TextEditingController textEditingController = TextEditingController();
  List<String> arrayData = List.filled(10, 'null');

  void insertElement() {
    int index = arrayData.indexOf('null');
    if (index != -1 && textEditingController.text.isNotEmpty) {
      setState(() {
        arrayData[index] = textEditingController.text;
        textEditingController.clear();
      });
    }
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
                    "Imagine you have a list of items you need to buy at the grocery store. This list helps you keep track of everything you need in one place. In programming, an array is like this list. It's a way to store multiple items (or elements) of the same type (like all fruits or all vegetables) under one name. Each item in the list (or array) has a specific position, just like each item on your shopping list has a number or place in the order.",
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
                  itemCount: arrayData.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: arrayData[index] != 'null'
                              ? Colors.amber
                              : Colors.grey,
                        ),
                        child: Center(
                          child: Text(
                            arrayData[index],
                            style: GoogleFonts.abyssinicaSil(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5.0,
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Text(
                        "For adding element",
                        style: GoogleFonts.aBeeZee(fontSize: 18),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                      ),
                      SizedBox(
                        height: 40,
                        width: 60,
                        child: TextField(
                          controller: textEditingController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(2),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      MaterialButton(
                        onPressed: insertElement,
                        color: Colors.blueAccent,
                        child: Text(
                          "Insert",
                          style: GoogleFonts.abel(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Text(
                      "For removing element",
                      style: GoogleFonts.aBeeZee(fontSize: 18),
                    ),
                  ]),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
