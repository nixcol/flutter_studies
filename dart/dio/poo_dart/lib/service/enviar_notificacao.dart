import 'package:meu_app_oo/classes/pessoa_abstract.dart';
import 'package:meu_app_oo/enum/tipo_notificacao.dart';
import 'package:meu_app_oo/service/notificacao_interface.dart';

import 'impl/notificacao_email.dart';
import 'impl/notificacao_push.dart';
import 'impl/notificacao_sms.dart';

class EnviarNofiticacao {
  NotificacaoInterface? notificacao;

  void notificar(PessoaDart pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.sms:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.pushNotification:
        notificacao = NotificacaoPush();
        break;
      default:
        break;
    }
    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa, "Mensagem");
    } else {
      print("Tipo de notificação não implementado");
    }

  }
}
