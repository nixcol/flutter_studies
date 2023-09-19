import 'package:meu_app_oo/classes/PessoaDart.dart';

void main(List<String> arguments) {
  var p1 = PessoaDart();

  //seguindo a orientação a objetos, não é certo citar valores diretamente na classe. por isso, temos que criar métodos que façam isso pra nós
  // p1.nome = "João";
  // p1.endereco = "Rua 1";
  // print(p1.nome);

  p1.setNome("Taylor");
  p1.setEndereco("Rua 2");
  //já está certo? não pois não devemos deixar exposto o método setNome, pois ele pode ser alterado por qualquer um que tenha acesso a classe
  //daí dará erro, pois o nome agora não está mais acessível
  //para isso criamos os gets, que seriam funções que retornam o valor da propriedade

  //agora com o construtor, fazemos assim:
  // var p1 = Pessoa("Taylor", "Rua 2");

  print(p1);
}
