import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TelaInicial extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SCA'),
        ),
        body: Image.asset(
          'assets/imagens/logo.png',
          width: 200,
          height: 200
        ),
    ),
    );
  }
}