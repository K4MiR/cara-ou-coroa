import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  //const ResultScreen({Key? key}) : super(key: key);

  String valor;

  ResultScreen(this.valor);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.valor);

    var caminhoImage;

    if (widget.valor == "coroa") {
      caminhoImage = "assets/image/moeda_cara.png";
    } else {
      caminhoImage = "assets/image/moeda_coroa.png";
    }

    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            caminhoImage,
            width: 250,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/image/botao_voltar.png",
              width: 250,
            ),
          ),
        ],
      ),
    );
  }
}
