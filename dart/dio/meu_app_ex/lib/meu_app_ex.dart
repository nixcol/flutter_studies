
import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/utils.dart';
import 'dart:io';

import 'models/aluno.dart';

void execute() {
  print("Bem vindo ao Sistema de Notas!");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  try {
    if (nome.trim() == '') {
      throw NomeInvalidoException(); }
  } on NomeInvalidoException {
    nome = "Nome Padrão";
    print(NomeInvalidoException);
    exit(0); } catch (e) {
      print(e);
      exit(0);
    }
  

  var aluno = Aluno(nome); //a variável aluno agora aponta para um objeto do tipo Aluno na memória
  double? nota; //o ? significa que a variável pode ser nula
  //ler double com texto e com saída
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota do aluno ou S para sair:", "S");
    if (nota != null) {
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  print("A média do aluno é: ${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("${aluno.getNome()} foi aprovado!");
  } else {
    print("${aluno.getNome()} foi reprovado!");
  }
}

  // do {
  //   //o loop do-while começa e executa o bloco de código dentro do do { ... } antes de verificar a condição no while
  //   //se a nota for nula, ou seja, se eu não consegui transformar em double, ele vai sair do laço
  //   //o if protege o aluno de receber notas inválidas em todas as vezes que o loop roda, enquanto o while determina quando o loop deve parar de rodar
  //   nota = ConsoleUtils.lerDoubleComTexto(
  //       "Digite a nota do aluno ou S para sair:");
  //   if (nota != null) {
  //     //imagine que não tivéssemos o if interno. o programa tentaria adicionar null como uma nota ao aluno, o que não faz sentido e pode causar erros.
  //     aluno.adicionarNota(nota);
  //   }
  // } while (nota != null); //verifica a condição do while (se a nota é diferente de null)
  // print(aluno.getNotas());

  //tente fazer tal coisa e se der erro faça isso
  // var line = ConsoleUtils.lerString();
  // try {
  //   double numero = double.parse(line ?? "0");
  //   print(numero);
  // } catch (e) {
  //   print("Número inválido.");
  // } finally {
  //   //ele vai ser executado independente se der erro ou não
  //   print("Executando finally...");
  // }

