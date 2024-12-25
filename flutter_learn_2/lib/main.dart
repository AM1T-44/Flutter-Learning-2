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
        body: Column(
          children: [
            catItems(),
            contact(),
            subCatItems(),
            bottomMenu(),
          ],
        ));
  }
}

class catItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.red,
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
            ),
          ),
          itemCount: 8,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Container(
          color: Colors.green,
          child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.amber,
                      ),
                      title: Text("Name"),
                      subtitle: Text("Mobile"),
                      trailing: Icon(Icons.delete),
                    ),
                  )),
        ));
  }
}

class subCatItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
            color: Colors.blue,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.amber),
                ),
              ),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            )));
  }
}

class bottomMenu extends StatelessWidget {
  var arrColor = [
    Colors.red,
    Colors.orange,
    Colors.green,
    const Color.fromARGB(255, 0, 0, 0),
    Colors.blue,
    Colors.cyan,
    Colors.purple,
    Colors.pink,
    Colors.grey,
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            color: Colors.yellow,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.all(11),
                child: Container(
                  color: arrColor[index],
                ),
              ),
              itemCount: arrColor.length,
            )));
  }
}
