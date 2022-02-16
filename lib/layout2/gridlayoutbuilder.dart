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

enum CorListView {
  YELLOW,
  GREEN,
  RED,
  BLUE,
}

class _TestePageState extends State<TestePage> {
  List<CorListView> lista = [
    CorListView.YELLOW,
    CorListView.GREEN,
    CorListView.RED,
    CorListView.BLUE,
    CorListView.YELLOW,
    CorListView.GREEN,
    CorListView.RED,
    CorListView.BLUE,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: lista.length,
        itemBuilder: (context, index) {
          final item = lista[index];
          Color color = Colors.blue;
          switch (item) {
            case CorListView.YELLOW:
              color = Colors.yellow;
              break;
            case CorListView.BLUE:
              color = Colors.blue;
              break;
            case CorListView.GREEN:
              color = Colors.green;
              break;
            case CorListView.RED:
              color = Colors.red;
              break;
          }
          return Container(
            height: 150,
            color: color,
          );
        },
      ),
    );
  }
}
