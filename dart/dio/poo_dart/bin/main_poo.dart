import 'package:meu_app_oo/classes/pessoa_fisica.dart';
import 'package:meu_app_oo/classes/pessoa_juridica.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';

void main(List<String> arguments) {
  var p1 = PessoaFisica("Taylor", "Rua 22", "123.456.789-00");
  print(p1);

  var pessoaFisica1 = PessoaFisica("Taylor", "Rua 22", "123.456.789-00");
  print(pessoaFisica1);

var pessoaJuridica1 = PessoaJuridica("Taylor Alisson Swift", "Rua 22", "92.608.377/0001-46", tipoNotificacao : TipoNotificacao.sms); 
  print(pessoaJuridica1);

  //percebe que pessoadart e pessoa juridica são bem parecidos? então, podemos fazer pessoa dart herdar de pessoa juridica 



}
