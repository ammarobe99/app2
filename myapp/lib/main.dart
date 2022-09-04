import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                children: [
                  RaisedButton(
                    elevation: 10,
                    color: Colors.black,
                    child: Text(
                      "first press",
                      style: TextStyle(color: Colors.blue, fontSize: 40),
                    ),
                    onPressed: (() {
                      print("hello teacher");
                    }),
                    onLongPress: () {
                      print("you presse too long ");
                    },
                  ),
                  ElevatedButton(
                      onPressed: (() {
                        print("the second press");
                      }),
                      style: ElevatedButton.styleFrom(elevation: 30),
                      child: Text(
                        "second press",
                        style: TextStyle(color: Colors.black, fontSize: (30)),
                      ))
                ],
              ),
            )));
  }
}
