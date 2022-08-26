import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_app/widgets/button.dart';
import 'package:qr_app/widgets/input.dart';
import 'package:qr_app/widgets/telainicial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
  Widget build(BuildContext context) {
    const color = const Color.fromARGB(255, 17, 23, 27);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
            primarySwatch: Color.fromARGB(255, 9, 33, 110),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class _MyAppState extends State<MyApp>{
@override 
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('SCA: Sistema de Controle de Acesso'),
      ),
      body: Image.asset(
        'assets/imagens/logo.png',
        width: 200,
        height: 200,
      ),
    ),
  );
}
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Input(
            // corDoFundo: "235869",
            textoBase: "Log in",
          ),
        )),
        Button(textoBase: "teste")
      ],
    ));
  }
}
