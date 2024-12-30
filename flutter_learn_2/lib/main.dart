import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_learn_2/introPage.dart';
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
  RangeValues val = RangeValues(0, 10);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(val.start.toString(), val.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 180, 61, 210),
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: RangeSlider(
              values: val,
              max: 10,
              min: 0,
              labels: labels,
              divisions: 10,
              onChanged: (newVal) {
                val = newVal;
                setState(() {});
              })),
    );
  }
}
