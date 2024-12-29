import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_learn_2/widgets/rounded_btn.dart';
import 'package:intl/intl.dart';

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
      home: const MyHomePage(title: 'Hello, everyone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 20,
                ),
                children: [
              TextSpan(text: 'Hello '),
              TextSpan(
                  text: 'World!\n',
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              TextSpan(
                text: 'Wellcome to ',
              ),
              TextSpan(
                  text: 'flutter',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ))
            ])));
  }
}
