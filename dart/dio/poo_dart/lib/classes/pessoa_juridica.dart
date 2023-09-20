import 'package:meu_app_oo/enum/tipo_notificacao.dart';

import 'pessoa_abstract.dart';

class PessoaJuridica extends PessoaDart {
  //dizer que PessoaJuridca extends PessoaDart significa que PessoaJuridica herda de PessoaDart, ou seja, PessoaJuridica é uma PessoaDart só que diferente. então, não precisamos reescrever os métodos que já existem em PessoaDart, só precisamos escrever os métodos que PessoaJuridica tem de diferente de PessoaDart.
  String _nome = "";
  String _endereco = "";
  String _cnpj= "";


  String getcnpj() {
    return _cnpj;
  }

  void setcnpj(String cnpj) {
    _cnpj = cnpj;
  }

  PessoaJuridica(String nome, String endereco, String cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.none}) : super(nome, endereco, tipoNotificacao: tipoNotificacao)  //fazemos esse super pq PessoaJuridica herda de PessoaDart, então, precisamos passar os parâmetros que PessoaDart precisa para funcionar no seu construtor.
  {
    //fica tipoNotificacao: tipoNotificacao p
    _nome = nome;
    _endereco = endereco;
    _cnpj = cnpj;
  }

   @override   
  String toString() {
    return {"Nome": getNome(), "Endereço": getEndereco(), "CNPJ": getcnpj(), "Tipo de notificação": getTipoNotificacao()}.toString();
    }
  }

