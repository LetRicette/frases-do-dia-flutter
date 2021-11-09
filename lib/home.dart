import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _frases = [
    'O importante não é vencer todos os dias, mas lutar sempre.',
    'Maior que a tristeza de não haver vencido é a vergonha de não ter lutado!',
    'É melhor conquistar a si mesmo do que vencer mil batalhas.',
    'Quem ousou conquistar e saiu pra lutar, chega mais longe!',
    'O medo de perder tira a vontade de ganhar.',
  ];

  var _fraseGerada = 'Clique abaixo para gerar uma frase!';

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Dia'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
