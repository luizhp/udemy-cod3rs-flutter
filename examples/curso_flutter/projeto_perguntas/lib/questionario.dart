import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(String opcao) fnRespostaSelecionada;

  Questionario(
      {this.perguntas, this.perguntaSelecionada, this.fnRespostaSelecionada});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        this.perguntas[this.perguntaSelecionada]['respostas'];

    return Column(children: [
      Questao(perguntas[perguntaSelecionada]['texto']),
      ...respostas
          .map((resp) => Resposta(resp['texto'], this.fnRespostaSelecionada))
          .toList()
    ]);
  }
}
