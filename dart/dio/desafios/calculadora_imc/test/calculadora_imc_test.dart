import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';
import 'package:calculadora_imc/classes/utils.dart';


void main() { 
group('calcularIMC', () {
    Utils utils = Utils();
    test('retorna o valor correto dado peso e altura', () {
      Pessoa pessoa = Pessoa.comValores('Taylor Swift', 70.00, 1.75);
      final imcExpected = 22.86;
      final result = utils.calcularImc(pessoa).round();
      //ver pra que serve o () => 
      expect(result, equals(imcExpected.round()));
    });

    test('lança uma exceção quando o peso é zero', () {
      Pessoa pessoa = Pessoa.comValores('Taylor Swift', 0.00, 1.75);
      //expect(valor real ou função que produz um valor, valor esperado ou condição que o valor deve satisfazer);
      expect(() => utils.calcularImc(pessoa), throwsException);
    });

    test('lança uma exceção quando a altura é zero', () {
      Pessoa pessoa = Pessoa.comValores('Taylor Swift', 70.00, 0.00);
      expect(() => utils.calcularImc(pessoa), throwsA(isA<UnsupportedError>()));
    });

    test('lança uma exceção quando a altura é negativa', () {
      Pessoa pessoa = Pessoa.comValores('Taylor Swift', 70.00, (-1.75));
      expect(() => utils.calcularImc(pessoa), throwsA(isA<UnsupportedError>()));
    });

    test('lança uma exceção quando o peso é negativo', () {      
      Pessoa pessoa = Pessoa.comValores('Taylor Swift', -70.00, 1.75);
      expect(() => utils.calcularImc(pessoa), throwsA(isA<UnsupportedError>()));
    });
  });

}
  

