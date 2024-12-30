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
      home: SplashScreen(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 180, 61, 210),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DashBoard Screen',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 11,
              ),
              TextField(
                controller: controller1,
              ),
              SizedBox(
                height: 11,
              ),
              RoundedButton(
                  btnName: 'Next',
                  bgColor: Colors.blue,
                  callback: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            myProfile(controller1.text.toString()),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

class myProfile extends StatelessWidget {
  var nameFromHome;

  myProfile(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: const Color.fromARGB(255, 180, 61, 210),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome, $nameFromHome',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade600,
        child: Center(
          child: Text(
            'Wellcome',
            style: TextStyle(
                fontSize: 33, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
