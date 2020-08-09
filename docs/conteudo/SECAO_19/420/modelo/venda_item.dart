import '../../419/modelo/produto.dart';

class VendaItem {
  Produto produto;
  int quantidade;
  double _preco;

  VendaItem({this.produto, this.quantidade = 1});

  double get preco {
    if (this.produto != null && _preco == null) {
      this._preco = produto.precoComDesconto;
    }
    return this._preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      this._preco = novoPreco;
    }
  }
}
