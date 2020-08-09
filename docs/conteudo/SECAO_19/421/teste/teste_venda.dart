import '../modelo/cliente.dart';
import '../modelo/venda.dart';
import '../modelo/venda_item.dart';
import '../modelo/produto.dart';

main() {
  var venda = new Venda(
      cliente: new Cliente(nome: 'Francisco', cpf: '12345678901'),
      itens: <VendaItem>[
        new VendaItem(
            quantidade: 30,
            produto: new Produto(
                codigo: 1, nome: 'Caneta Bic', preco: 6.00, desconto: 0.5)),
        new VendaItem(
            quantidade: 20,
            produto: new Produto(
                codigo: 123, nome: 'Caderno', preco: 20.00, desconto: 0.25)),
        new VendaItem(
            quantidade: 100,
            produto: new Produto(
                codigo: 52, nome: 'Borracha', preco: 2.00, desconto: 0.5))
      ]);
  print("O valor total da venda é: R\$ ${venda.valorTotal}.");
  //O valor total da venda é: R$ 490.0.

  print("Nome do primeiro produto é ${venda.itens[0].produto.nome}");
  //Nome do primeiro produto é Caneta Bic

  print("O CPF do cliente é ${venda.cliente.cpf}");
  //O CPF do cliente é 12345678901
}
