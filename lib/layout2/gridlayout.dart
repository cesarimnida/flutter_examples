import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestePage(),
    );
  }
}

// -----------------------------------

class TestePage extends StatefulWidget {
  @override
  _TestePageState createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            height: 150,
            color: Colors.red,
          ),
          Container(
            height: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            color: Colors.red,
          ),
          Container(
            height: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            color: Colors.blue,
          ),
          Container(
            height: 150,
            color: Colors.red,
          ),
          Container(
            height: 150,
            color: Colors.yellow,
          ),
          Container(
            height: 150,
            color: Colors.green,
          ),
          Container(
            height: 150,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
