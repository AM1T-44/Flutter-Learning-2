import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
  var emailText = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  //enabled: false,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailText,
                  decoration: InputDecoration(
                    hintText: "Enter Emails here",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.deepOrange, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    //suffixText: "Email",
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.orange,
                        )),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  controller: passText,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorColor: Colors.amber.shade600,
                  decoration: InputDecoration(
                    hintText: 'Enter password here',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: Colors.deepOrange,
                        )),
                    //focusedBorder:
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      String uEmail = emailText.text.toString();
                      String uPass = passText.text;

                      print('Email: $uEmail \nPassword: $uPass');
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.cyan),
                    )),
              ],
            ),
          ),
        ));
  }
}
