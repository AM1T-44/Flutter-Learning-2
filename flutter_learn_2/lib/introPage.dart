import 'package:flutter/material.dart';
import 'package:flutter_learn_2/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Intro Page'),
          backgroundColor: Colors.amber.shade400,
        ),
        body: Column(
          children: [
            Text(
              'Wellcome',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text('Home'))
          ],
        ));
  }
}
