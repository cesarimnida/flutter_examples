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
      home: const TestePage(),
    );
  }
}

// -----------------------------------

class TestePage extends StatefulWidget {
  final String nome;

  const TestePage({this.nome = "Valor inicial"});

  @override
  _TestePageState createState() => _TestePageState();
}

class _TestePageState extends State<TestePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: GestureDetector(
        onTap: onClickGesture,
        child: Text(
          widget.nome,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    ));
  }

  onClickGesture() {
    const page = TestePage(nome: "Novo valor!");
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => page,
        ));
  }
}

List<StatusContato> _statusContatos = [
  StatusContato("Contato"),
  StatusContato("Contato"),
  StatusContato("Contato"),
  StatusContato("Contato"),
];

class StatusContato {
  String contato;

  StatusContato(this.contato);
}
