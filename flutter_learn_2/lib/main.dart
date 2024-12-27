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
        body: Wrap(
          direction: Axis.horizontal,
          spacing: 11,
          runSpacing: 11,
          alignment: WrapAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.orange,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.pink,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.purple,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.lightBlue,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.lightGreen,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            )
          ],
        ));
  }
}
