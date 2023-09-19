class PessoaDart {
  //classe
  //propriedades
  String _nome = "";
  String _endereco = "";
  //no dart não temos private e public, mas temos o _ que é usado para indicar que a propriedade é privada
  //métodos
  void setNome(String nome) {
    //o this é usado para referenciar a propriedade da classe, e não a variável do método
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

    //agora queremos que, quando criemos uma pessoa, ela obrigatoriamente já venha com nome e endereço preenchido 
    //para isso, usamos o construtor. o construtor é o primeiro método que é executado na criação de uma classe 

    Pessoa(String nome, String endereco) {
      //o construtor é um método que tem o mesmo nome da classe
      _nome = nome;
      _endereco = endereco;
    }


  }



