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
    {'name': 'Amit', 'mob': '01712345678', 'unRead': '3'},
    {'name': 'Tonoy', 'mob': '01798765432', 'unRead': '5'},
    {'name': 'Anupom', 'mob': '01712345678', 'unRead': '1'},
    {'name': 'Avi', 'mob': '01712121213', 'unRead': '7'},
    {'name': 'Tanzil', 'mob': '01712345678', 'unRead': '3'},
    {'name': 'Sayanta', 'mob': '01798765432', 'unRead': '5'},
    {'name': 'Mahmud', 'mob': '01712345678', 'unRead': '1'},
    {'name': 'Rayhan', 'mob': '01712121213', 'unRead': '7'},
    {'name': 'Raihan', 'mob': '01712345678', 'unRead': '3'},
    {'name': 'Shesher', 'mob': '01798765432', 'unRead': '5'},
    {'name': 'Amit', 'mob': '01712345678', 'unRead': '3'},
    {'name': 'Tonoy', 'mob': '01798765432', 'unRead': '5'},
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
        body: ListView(
          children: arrNames
              .map((value) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        leading: Icon(Icons.account_circle),
                        title: Text('${value['name']}'),
                        subtitle: Text('${value['mob']}'),
                        trailing: CircleAvatar(
                            radius: 10, child: Text('${value['unRead']}')),
                      ),
                    ),
                  ))
              .toList(),
        ));
  }
}
