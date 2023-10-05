import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/utils.dart';

void main(List<String> arguments) {
  print('Calculadora de IMC');
  Utils utils = Utils();
  Pessoa pessoa1 = Pessoa();
  print(
      '${pessoa1.getNome()}, seu IMC é de ${utils.calcularImc(pessoa1)}, você está na classificação ${utils.classificarImc(utils.calcularImc(pessoa1)).toLowerCase()}!');

  
}
