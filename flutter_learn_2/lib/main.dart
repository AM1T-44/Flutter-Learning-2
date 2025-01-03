import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  static const String KEYLOGIN = 'Login';
  @override
  void initState() {
    Timer(
      const Duration(seconds: 1),
      () {
        whereToGo();
      },
    );
  }

  void whereToGo() async {
    var sharePrefs = await SharedPreferences.getInstance();
    var isLogedIn = sharePrefs.getBool(KEYLOGIN);

    if (isLogedIn == true) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff28b8d5),
        child: const Center(
          child: Text(
            'Flutter Learning',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  var email = TextEditingController();
  var pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GradientAppBar(
          gradient: const LinearGradient(
              colors: [Color(0xff020344), Color(0xff28b8d5)]),
          title: Center(child: Text('Login')),
        ),
        body: Center(
          child: Container(
            width: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  size: 50,
                  color: Color(0xff28b8d5),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  controller: email,
                  decoration: InputDecoration(
                      label: Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 11,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16))),
                ),
                SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () async {
                      var sharedPrefs = await SharedPreferences.getInstance();
                      sharedPrefs.setBool(SplashScreenState.KEYLOGIN, true);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ));
                    },
                    child: Text(
                      'LogIn',
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff28b8d5),
                        foregroundColor: Color(0xff020344)))
              ],
            ),
          ),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GradientAppBar(
        gradient: const LinearGradient(
            colors: [Color(0xff020344), Color(0xff28b8d5)]),
        title: Center(child: Text('Home')),
      ),
      body: Container(
        color: Color(0xff28b8d5),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 70,
              color: Color.fromARGB(167, 254, 254, 254),
            ),
            ElevatedButton(
                onPressed: () async {
                  var sharedPrefs = await SharedPreferences.getInstance();
                  sharedPrefs.setBool(SplashScreenState.KEYLOGIN, false);

                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: Text('LogOut'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xff28b8d5),
                    backgroundColor: Color(0xff020344)))
          ],
        ),
      ),
    );
  }
}
