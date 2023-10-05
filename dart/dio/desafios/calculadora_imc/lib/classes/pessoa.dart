import 'package:calculadora_imc/classes/utils.dart';

class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  Utils utils = Utils();

  Pessoa() {
    _nome = _lerNome();
    _peso = _lerPeso();
    _altura = _lerAltura();
  }

  Pessoa.comValores(this._nome, this._peso, this._altura); //pra testes

  String _lerNome() {
    while (true) {
      String nome = utils.lerConsoleComMensagem('Digite o nome:');
      if (utils.validarNome(nome)) {
        return nome;
      } else {
        print('Por favor, digite um nome válido.');
      }
    }
  }

  double _lerPeso() {
    while (true) {
      String input = utils.lerConsoleComMensagem('Digite o peso:');
      double? peso = double.tryParse(input) ?? 0;
      if (peso <= 0) {
        print('O peso deve ser um número positivo e maior que zero!');
        continue;
      }
      return peso;
    }
  }

  double _lerAltura() {
    //o true sempre avalia como verdadeira, criando um loop infinito. nesse caso, o loop só vai parar por causa do return dentro do try, ou seja, qnd eu digitar um número válido
    while (true) {
      String input = utils.lerConsoleComMensagem('Digite a altura:');
      double? altura =
          double.tryParse(input) ?? 0; //verificando se o input é um número. o double.tryParse retorna null se o input não for um número, então eu coloco o valor 0 como default
      if (altura <= 0) {
        print('A altura deve ser um número positivo e maior que zero!');
        continue; //pular o restante do loop e começar de novo
      }
      return altura;
    }
  }

  void setNome(String nome) => _nome = nome;
  //os getters devem apenas retornar valores
  String getNome() => _nome!;

  void setAltura(double altura) => _altura = altura;
  double getAltura() => _altura!;

  void setPeso(double peso) => _peso = peso;
  double getPeso() => _peso!;

  @override
  String toString() {
    return 'Nome: $_nome, Peso: $_peso, Altura: $_altura';
  }
}
