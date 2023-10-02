import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Dá o valor final do produto com desconto cru', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  test('Dá o valor final do produto passando valor zerado', () {
    //esse parêntese antes das chaves indica uma função anônima que contém o código do teste
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
    //a função expect é usada para verificar se uma determinada condição é atendida, recebendo dois argumentos:
    //1. o valor real ou uma função que produz um valor
    // nesse caso, () => app.calcularDesconto(0, 150, false)
    //2. o valor esperado ou uma condição que o valor real deve atender
    // o throwsA é uma função que verifica se a função fornecida (no primeiro argumento de expect) lança uma exceção. em outras palavras, o teste espera que a chamada de app.calcularDesconto(0, 150, false) lance uma exceção
    //TypeMatcher é uma classe que verifica se um objeto é de um tipo específico. nesse caso, o teste está verificando se a exceção lançada é do tipo ArgumentError
  });

  test('Dá o valor final do produto com desconto percentual', () {
    expect(app.calcularDesconto(1000, 10, true), 900);
  });

  test('Dá o valor final do produto com desconto zerado', () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  //podemos também agrupar testes
  group('Testes de desconto', () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}:
          850, //o values seria o que ta no {} e o expected é o q vem dps dos :
      {'valor': 1000, 'desconto': 10, 'percentual': true}: 900
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values. Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values['valor'].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            equals(expected));
      });
    });
  });

  group('Testes de desconto com valores zerados, deve gerar erro', () {
    var valuesToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true}
    };
    valuesToTest.forEach((values) {
      test('Entrada: $values', () {
        expect(
            () => app.calcularDesconto(
                double.parse(values['valor'].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    });
  });

  test('Retornar CEP', () async {
    var body = await app.retornarCEP('01001000');
    print(body);
    expect(body['bairro'], equals('Sé'));
  });
}
