import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final Function(String) _fnQuandoSelecionado;

  Resposta(this._texto, [this._fnQuandoSelecionado]);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text(this._texto),
          onPressed: (this._fnQuandoSelecionado != null
              ? this._fnQuandoSelecionado(this._texto)
              : null)),
    );
  }
}
