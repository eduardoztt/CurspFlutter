import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {

final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

Questionario({
  required this.perguntaSelecionada,
  required this.perguntas,
  required this.quandoResponder,
});


bool get temPeguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
 List<Map<String, Object>> respostas = temPeguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        as List<Map<String, Object>>
        : [];


    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
      ...respostas.map((resp){
        return Resposta(
          resp['texto'].toString(),
           () =>
            quandoResponder(int.parse(resp['pontuacao'].toString())),
          );
      }).toList(),
      ],
    );
  }
}
