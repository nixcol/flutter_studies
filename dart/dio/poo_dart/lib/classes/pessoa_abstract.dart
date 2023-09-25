import 'package:meu_app_oo/enum/tipo_notificacao.dart';

abstract class PessoaDart {
  String _nome = "";
  String _endereco = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.none;
  String _email = "";
  String _celular = "";
  String _token = "";

  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }


  String getToken() {
    return _token;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  
  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }


  @override //serve para sobrescrever o método toString.
  String toString() {
    return "Nome: $_nome, Endereço: $_endereco, Tipo de notificação: $_tipoNotificacao";
  }

  PessoaDart(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.none}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }
}
