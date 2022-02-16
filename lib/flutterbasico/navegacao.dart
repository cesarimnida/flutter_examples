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
  String text = "Clique aqui";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20),
          ),
          onTap: () => onClickGesture(),
        ),
      ),
    );
  }

  onClickGesture() {
    final page = TestePage();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }
}

class NovaPage extends StatefulWidget {
  @override
  _NovaPageState createState() => _NovaPageState();
}

class _NovaPageState extends State<NovaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          "Nova page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
