import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_learn_2/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();

  var result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello, everyone'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  controller: controller1,
                  keyboardType: TextInputType.number,
                ),
                TextField(
                  controller: controller2,
                  keyboardType: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 = int.parse(controller1.text.toString());
                              var no2 = int.parse(controller2.text.toString());
                              result = no1 + no2;
                            });
                          },
                          child: Text('Add')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 = int.parse(controller1.text.toString());
                              var no2 = int.parse(controller2.text.toString());
                              result = no1 - no2;
                            });
                          },
                          child: Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 = int.parse(controller1.text.toString());
                              var no2 = int.parse(controller2.text.toString());
                              result = no1 * no2;
                            });
                          },
                          child: Text('Mul')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              var no1 = int.parse(controller1.text.toString());
                              var no2 = int.parse(controller2.text.toString());
                              result = no1 % no2;
                            });
                          },
                          child: Text('Mod')),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'Result: $result',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
