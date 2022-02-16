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

enum RadioGroupInit { opcao1, opcao2 }

class _TestePageState extends State<TestePage> {
  RadioGroupInit valueRadio = RadioGroupInit.opcao1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: const Text('Opção 1'),
              leading: Radio<RadioGroupInit>(
                value: RadioGroupInit.opcao1,
                groupValue: valueRadio,
                onChanged: (value) {
                  setState(() {
                    valueRadio = value ?? RadioGroupInit.opcao1;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text('Opção 2'),
              leading: Radio<RadioGroupInit>(
                value: RadioGroupInit.opcao2,
                groupValue: valueRadio,
                onChanged: (value) {
                  setState(() {
                    valueRadio = value ?? RadioGroupInit.opcao2;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
