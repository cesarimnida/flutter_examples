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
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 16,
              ),
              color: Colors.blue,
              child: const Text("Teste", style: TextStyle(color: Colors.white)),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 16,
              ),
              color: Colors.blue,
              child: const Text("Teste", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
