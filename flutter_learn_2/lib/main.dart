import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      // body: Container(
      //   height: 300,
      //   width: 300,
      //   child: Stack(
      //     children: [
      //       Positioned(
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.red,
      //         ),
      //       ),
      //       Positioned(
      //         left: 25,
      //         top: 25,
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.green,
      //         ),
      //       ),
      //       Positioned(
      //         left: 50,
      //         top: 50,
      //         child: Container(
      //           height: 200,
      //           width: 200,
      //           color: Colors.blue,
      //         ),
      //       )
      //     ],
      //   ),
      // ),

      body: Stack(
        children: [
          Container(
            height: 150,
            width: 300,
            color: Colors.green,
          ),
          Positioned(
            left: 100,
            top: 25,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
