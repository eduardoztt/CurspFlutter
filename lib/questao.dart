import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 24,color: Color.fromARGB(255, 60, 55, 8)),
        textAlign: TextAlign.center,
      ),
    );
  }
}
