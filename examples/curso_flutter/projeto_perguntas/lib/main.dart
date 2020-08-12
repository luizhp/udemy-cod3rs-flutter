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
    // final List<Map<String, Object>> perguntas = [
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

    List<String> respostas = perguntas[_perguntaSelecionada]['respostas'];
    List<Widget> widgets =
        respostas.map((t) => Resposta(t, this._fnRespostaSelecionada)).toList();

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: [
              Questao(perguntas[_perguntaSelecionada]['texto']),
              ...widgets
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
