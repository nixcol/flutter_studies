import 'package:meu_app_testes/classes/viacep.dart';
import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'meu_app_testes_test.mocks.dart';

@GenerateMocks([MockViaCep])
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
    //ViaCEP viaCep = ViaCEP(); não vamos mais precisar disso daqui
    //vamos usar o mockito para criar um mock da classe ViaCEP
    MockMockViaCep mockMockViaCep = MockMockViaCep();
    when(mockMockViaCep.retornarCEP("01001000")) //quando eu chamar essa função, mock esse retorno enquanto eu passo esse parâmetro
        .thenAnswer((realInvocation) => Future.value({
         "cep": "01001-000",
        "logradouro": "Praça da Sé",
        "complemento": "lado ímpar",
        "bairro": "Sé",
        "localidade": "São Paulo",
        "uf": "SP",
        "ibge": "3550308",
        "gia": "1004",
        "ddd": "11",
        "siafi": "7107"
        }));
    var body = await mockMockViaCep.retornarCEP('01001000');
    expect(body['bairro'], equals('Sé'));
  });
}

class MockViaCep extends Mock implements ViaCEP {
  //dps que fazemos isso temos que fazer dart run build_runner build --delete-conflicting-outputs
}
