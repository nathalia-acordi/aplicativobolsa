
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Button extends StatelessWidget {
  String textoBase = "";
  final String? corDoFundo;
  Button({Key? key, required this.textoBase, this.corDoFundo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: MediaQuery.of(context).size.width * 0.30,
      child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(20)),
              backgroundColor: MaterialStateProperty.all<Color>(
                  corDoFundo != null
                      ? Color(int.parse("0xFF${corDoFundo!}"))
                      : const Color(0xFF61B4BB)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ))),
          onPressed: () {},
          child: Text(textoBase,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: GoogleFonts.inter().fontFamily))),
    );
  }
}
