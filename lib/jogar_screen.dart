import 'dart:math';

import 'package:cara_ou_coroa/result_screen.dart';
import 'package:flutter/material.dart';


class JogarScreen extends StatefulWidget {
  const JogarScreen({Key? key}) : super(key: key);

  @override
  State<JogarScreen> createState() => _JogarScreenState();
}

class _JogarScreenState extends State<JogarScreen> {

  void _exibirResultado() {

    var itens = ["cara","coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];


    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResultScreen(resultado)

    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/image/logo.png",
            width: 270,
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("assets/image/botao_jogar.png",
              width: 250,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
