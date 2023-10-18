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
          mainAxisAlignment: MainAxisAlignment.start, //alinhamento vertical
          crossAxisAlignment: CrossAxisAlignment.start, //alinhamento horizontal
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.cyan,
              child: Text('Ações do usuário', style: GoogleFonts.lato(fontSize: 20))),
            Text('O seu número aleatório é: $numeroGerado',
                style: GoogleFonts.lato(fontSize: 20)),
            SizedBox( //SizedBox serve para fixar o tamanho de um componente
              width: 100,
              height: 100,
              child: Container(
                color: Colors.grey,
                child: Text('Número de cliques: $numeroCliques',
                    style: GoogleFonts.lato(fontSize: 20)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, //espaço entre os elementos
              children: [
                Expanded(
                  flex: 2, //faz com que o elemento ocupe 2/3 do espaço
                  child: Container(
                    color: Colors.red,
                    child: Text("Texto 1",
                        style: GoogleFonts.lato(fontSize: 20)),
                  ),
                ),
                Expanded( //faz com que o elemento ocupe o espaço restante, se houver
                  child: Container(
                    color: Colors.blue,
                    child: Text("Texto 2",
                        style: GoogleFonts.lato(fontSize: 20)),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.pink,
                    child: Text("Texto 3",
                        style: GoogleFonts.lato(fontSize: 20)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
