import 'package:meu_app_oo/service/notificacao_interface.dart';

import '../../classes/pessoa_abstract.dart';

class NotificacaoPush implements NotificacaoInterface {

  @override
  void enviarNotificacao(PessoaDart pessoa, String mensagem) {
    print("Enviando Push para ${pessoa.getNome()}");
  }

}