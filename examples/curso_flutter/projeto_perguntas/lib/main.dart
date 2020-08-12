import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void Function() _fnRespostaSelecionada(String opcao) {
    return () {
      setState(() {
        this._perguntaSelecionada++;
      });
      print(this._perguntaSelecionada);
      print('$opcao foi selecionada');
    };
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas[_perguntaSelecionada]),
              Resposta("Resposta 1", this._fnRespostaSelecionada),
              Resposta("Resposta 2", this._fnRespostaSelecionada),
              Resposta("Resposta 3", this._fnRespostaSelecionada),
              Resposta("Resposta 4", this._fnRespostaSelecionada),
              Resposta("Resposta 5")
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
