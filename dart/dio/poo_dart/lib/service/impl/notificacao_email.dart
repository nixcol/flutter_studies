import '../../classes/pessoa_abstract.dart';
import '../notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(PessoaDart pessoa, String mensagem) {
    print("Enviando Email para ${pessoa.getNome()}");
  }
}