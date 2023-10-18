import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( //SafeArea é um widget que garante que o conteúdo não fique atrás da barra de status, da barra de navegação ou da barra de ferramentas.
    child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 207, 220),
      body:  SizedBox(
        width: double.infinity,
        child: Column( 
          children: [
            const SizedBox(height:70),
            const Icon(
               Icons.person, size: 150, color: Colors.white),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              height: 30,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text('Informe seu e-mail:', style: GoogleFonts.lato(fontSize: 20)),
                  SizedBox(width: 20),
                  Text('*', style: GoogleFonts.lato(fontSize: 20, color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Row(
                children: [
                  Text('Informe a senha:', style: GoogleFonts.lato(fontSize: 20)),
                  SizedBox(width: 20),
                  Text('*', style: GoogleFonts.lato(fontSize: 20, color: Colors.red)),
                ],
              ),
            ),
            Expanded(child: Container()), //pra chumbar o nosso botão lá em baixo
            Container(
              height: 30,
              color: Colors.green,
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Text('Login', style: GoogleFonts.lato(fontSize: 20)),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.center,
              child: Text('Cadastro', style: GoogleFonts.lato(fontSize: 20)),
            ),
            SizedBox(height: 20),
          ],
      
          
        ),
      ),
    )); 
  } 
}
