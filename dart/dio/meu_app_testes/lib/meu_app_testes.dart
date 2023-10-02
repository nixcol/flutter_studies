import 'dart:convert';

import 'package:http/http.dart' as http;

double calcularDesconto(double valor, double desconto, bool percentual) {
  if (valor <= 0) {
    throw ArgumentError("O valor do produto não pode ser zero!");
  }
  if (desconto <= 0) {
    throw ArgumentError("O valor do desconto não pode ser zero!");
  }
  if (percentual) {
    return valor - ((valor * desconto) / 100);
  }
  return valor - desconto;
}

Future<Map> retornarCEP(String cep) async {
  //essa chamada é async
  var retorno =
      await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));
  //o await faz com que a execução do código espere a resposta da requisição
  var decodedResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
  //o jsonDecode transforma o json em um objeto do dart
  return decodedResponse;
}
