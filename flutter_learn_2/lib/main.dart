import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 0),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => MyHomePage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade400,
        child: Center(
          child: Text(
            'Animation Learning',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  var arrNames = [
    'Amit',
    'Tonoy',
    'Anupom',
    'Avi',
    'Tanzil',
    'Sayanta',
    'Mahmud',
    'Rayhan',
    'Raihan',
    'Shesher'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Mapping Lists to Widget",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          backgroundColor: Colors.purple.shade600,
        ),
        body: Container(
          child: ListView(
            children: arrNames
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade400,
                          borderRadius: BorderRadius.circular(11)),
                      child: Center(
                          child: Text(
                        '$e',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                )
                .toList(),
          ),
        ));
  }
}
