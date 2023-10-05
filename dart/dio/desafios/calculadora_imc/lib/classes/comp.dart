import 'dart:io';

void main(List<String> arguments) {
  final utils = Utils();
  final name = utils.lerConsole('Por favor, digite seu nome:');
  print('Nome: $name');
}

class Utils {
  String lerConsole(String mensagem) {
    String? line;
    do {
      print(mensagem);
      line = stdin.readLineSync();
      if (line == null || line.isEmpty) {
        print('Entrada inválida! Tente novamente.');
      }
    } while (line == null || line.isEmpty);
    return line;
  }
}
