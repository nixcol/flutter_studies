import '../../classes/pessoa_abstract.dart';
import '../notificacao_interface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  // o @override serve para sobrescrever o método enviarNotificacao da classe NotificacaoInterface
  void enviarNotificacao(PessoaDart pessoa, String mensagem) {
    print("Enviando SMS para ${pessoa.getNome()}");
  }
}
