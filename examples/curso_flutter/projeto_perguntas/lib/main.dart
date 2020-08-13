import 'package:flutter/material.dart';
// import 'package:projeto_perguntas/questionario.dart';
// import 'package:projeto_perguntas/resultado.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final _perguntas = [
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

  void Function() _fnRespostaSelecionada(String opcao) {
    return () {
      if (temPerguntaSelecionada) {
        setState(() {
          this._perguntaSelecionada++;
        });
        print(this._perguntaSelecionada);
      }
      print('$opcao foi selecionada');
    };
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: temPerguntaSelecionada
              ? Questionario(
                  perguntas: this._perguntas,
                  perguntaSelecionada: this._perguntaSelecionada,
                  fnRespostaSelecionada: _fnRespostaSelecionada)
              : Resultado()),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
