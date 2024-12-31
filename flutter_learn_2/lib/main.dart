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
  var _height = 100.0;
  var _width = 200.0;
  bool toggle = true;
  Decoration decor = BoxDecoration(
      borderRadius: BorderRadius.circular(5), color: Colors.purple);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        backgroundColor: Colors.purple.shade600,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: _height,
              width: _width,
              decoration: decor,
              curve: Curves.slowMiddle,
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  if (toggle) {
                    _height = 200.0;
                    _width = 100.0;
                    decor = BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.pink);
                  } else {
                    _height = 100.0;
                    _width = 200.0;
                    decor = BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.purple);
                  }
                  setState(() {});
                  toggle ^= true;
                },
                child: Text('Animate'))
          ],
        ),
      ),
    );
  }
}
