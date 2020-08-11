import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final perguntaSelecionada = 0;

  void responder() {
    // this.perguntaSelecionada++;
    print(this.perguntaSelecionada);
    print('Resposta 1 foi selecionada');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Resposta 4 foi selecionada');
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
              Text(perguntas[perguntaSelecionada]),
              RaisedButton(child: Text('Resposta 1'), onPressed: responder),
              RaisedButton(
                  child: Text('Resposta 2'),
                  onPressed: () {
                    print('Resposta 2 foi selecionada');
                  }),
              RaisedButton(
                  child: Text('Resposta 3'),
                  onPressed: () => print('Resposta 3 foi selecionada')),
              RaisedButton(
                  child: Text('Resposta 4'),
                  onPressed: funcaoQueRetornaUmaOutraFuncao()),
              RaisedButton(child: Text('Resposta 5'), onPressed: null)
            ],
          )),
    );
  }
}
