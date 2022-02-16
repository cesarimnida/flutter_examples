import 'dart:async';

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

enum StatePage { STARTED, LOADING, ERROR, DONE }

class _TestePageState extends State<TestePage> {
  final StreamController<StatePage> _streamController =
      StreamController.broadcast();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              width: double.maxFinite,
              margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: SizedBox(
                      width: 180,
                      child: Image.network(
                          "https://i2.wp.com/blog.iteris.com.br/wp-content/uploads/2020/10/Iteris_Degrade.png"),
                    ),
                  ),
                  const Text("Login"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Usuário:"),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(child: TextField()),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text("Senha:"),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                          child: TextField(
                        obscureText: true,
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Center(
                      child: StreamBuilder<StatePage>(
                          stream: _streamController.stream,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              final state = snapshot.data ?? StatePage.STARTED;
                              switch (state) {
                                case StatePage.STARTED:
                                  return buttonLogin();
                                case StatePage.LOADING:
                                  return const CircularProgressIndicator();
                                case StatePage.ERROR:
                                  return buttonLogin();
                                case StatePage.DONE:
                                  return buttonLogin();
                              }
                            } else {
                              return buttonLogin();
                            }
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonLogin() => ElevatedButton(
      onPressed: () => onClickLogin(), child: const Text("Login"));

  onClickLogin() async {
    _streamController.add(StatePage.LOADING);
    Future.delayed(const Duration(seconds: 3), () {
      _streamController.add(StatePage.DONE);
    });
  }
}
