import 'dart:math';

class GeradorNumeroAleatorioService {

   static int gerarNumero(int numeroMax) {
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(numeroMax);
  }

}