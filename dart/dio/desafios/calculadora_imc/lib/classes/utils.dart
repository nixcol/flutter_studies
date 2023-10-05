import 'dart:convert';
import 'dart:io';
import 'pessoa.dart';

class Utils {
  String lerConsoleComMensagem(String mensagem) {
    print(mensagem);
    String? line = stdin.readLineSync(encoding: utf8);
    while (line == null || line.isEmpty) {
      print('Entrada inválida! Tente novamente.');
      print(mensagem);
      line = stdin.readLineSync(encoding: utf8);
    }
    return line;
  }

  int calcularImc(Pessoa pessoa) {
    if (pessoa.getAltura() <= 0) {
    throw UnsupportedError('A altura deve ser um número positivo e maior que zero!');
  }
    double imcValue =
        pessoa.getPeso() / (pessoa.getAltura() * pessoa.getAltura());
    if (imcValue <= 0 || imcValue.isNaN || imcValue.isInfinite) {
      throw UnsupportedError('Não foi possível calcular o IMC, reveja os valores!');
    } else {
      return imcValue.round();
    }
  }

  bool validarNome(String nome) {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(nome);
  }

  String classificarImc(int imc) {
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc < 25) {
      return 'Peso normal';
    } else if (imc < 30) {
      return 'Sobrepeso';
    } else if (imc < 35) {
      return 'Obesidade grau 1';
    } else if (imc < 40) {
      return 'Obesidade grau 2';
    } else if (imc >= 40) {
      return 'Obesidade grau 3';
    } else {
      return 'Não foi possível classificar o IMC';
    }
  }
}
