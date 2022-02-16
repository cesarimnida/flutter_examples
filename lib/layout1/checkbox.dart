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
  bool valueCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CheckboxListTile(
          title: const Text("opção de check"),
          value: valueCheck,
          onChanged: (value) {
            setState(() {
              valueCheck = value ?? false;
            });
          },
        ),
      ),
    );
  }
}
