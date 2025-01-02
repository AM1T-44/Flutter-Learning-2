import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 0),
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
        child: const Center(
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
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  var size = [150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    animation = Tween(begin: 0.0, end: 1.0).animate(animationController);

    animationController.addListener(
      () => setState(() {}),
    );

    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ripple Animation Effects",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        backgroundColor: Colors.purple.shade600,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            rippleContainer(size[0], animation),
            rippleContainer(size[1], animation),
            rippleContainer(size[2], animation),
            rippleContainer(size[3], animation),
            rippleContainer(size[4], animation),
            Icon(
              Icons.call,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

Widget rippleContainer(radius, dynamic animation) {
  return Container(
    height: radius * animation.value,
    width: radius * animation.value,
    decoration: BoxDecoration(
        color: Colors.purple.withOpacity(1.0 - animation.value),
        shape: BoxShape.circle),
  );
}
