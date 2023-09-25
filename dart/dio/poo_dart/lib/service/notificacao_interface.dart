import 'package:meu_app_oo/classes/pessoa_abstract.dart';

abstract class NotificacaoInterface {
  void enviarNotificacao(PessoaDart pessoa, String mensagem);

  //pra você mandar uma notificação, você tem que obrigatoriamente escrever esse método. e ele não falou como que tá escrito, e quem sabe de fato como vai enviar, são as classes que implementam essa interface.
}