import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final int _pontuacao;
  final Function(String, int) _fnQuandoSelecionado;

  Resposta(this._texto, this._pontuacao, [this._fnQuandoSelecionado]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(this._texto),
          onPressed: this._fnQuandoSelecionado(this._texto, this._pontuacao)),
    );
  }
}
