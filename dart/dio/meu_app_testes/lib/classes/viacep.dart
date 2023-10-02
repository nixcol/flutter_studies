import 'dart:convert';
import 'package:http/http.dart' as http;

class ViaCEP {
  Future<Map> retornarCEP(String cep) async {
    //essa chamada é async
    var retorno =
        await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));
    //o await faz com que a execução do código espere a resposta da requisição
    var decodedResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
    //o jsonDecode transforma o json em um objeto do dart
    print(decodedResponse);
    return decodedResponse;
  }
}
