abstract class PessoaDart {
  String _nome = "";
  String _endereco = "";

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

  @override //serve para sobrescrever o método toString.
  String toString() {
    return "Nome: $_nome, Endereço: $_endereco";
  }

  PessoaDart(String nome, String endereco) {
    _nome = nome;
    _endereco = endereco;
  }
}
