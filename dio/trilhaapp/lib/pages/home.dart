import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/services/gerar_num_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;
  var numeroCliques = 0;

  @override
  Widget build(BuildContext context) {
    //return Container(); //Container é um widget que permite colocar outros widgets dentro dele
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App', style: GoogleFonts.lato(fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            //sem o setState, o número não muda. O setState é o que faz a tela ser atualizada, digamos assim
            numeroGerado = GeradorNumeroAleatorioService.gerarNumero(1000);
            numeroCliques++;
          });
        },
        child: const Icon(Icons.numbers_sharp),
      ),
      body: Container(
        color: Colors.green[100],
        width: double
            .infinity, //largura do container é igual a largura da tela

        margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16), //margem de 8 pixels na vertical e 16 na horizontal
        child: Column(
          //bota um componente em baixo do outro
          mainAxisAlignment: MainAxisAlignment.center, //alinhamento vertical
          crossAxisAlignment: CrossAxisAlignment.center, //alinhamento horizontal
          children: [
            Text('Ações do usuário', style: GoogleFonts.lato(fontSize: 20)),
            Text('O seu número aleatório é: $numeroGerado',
                style: GoogleFonts.lato(fontSize: 20)),
            Text('Número de cliques: $numeroCliques',
                style: GoogleFonts.lato(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
