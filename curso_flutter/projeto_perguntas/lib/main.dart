import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
  ];

  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          backgroundColor: Color.fromARGB(255, 0, 195, 255),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1')
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: () {
                        print('Resposta 2 foi selecionado');
                      },
            ),
            ElevatedButton( 
              child: Text('Resposta 3'),
              onPressed: () => print('Resposta 3!!!')
            ),
          ],
        ),
      ),
    );
  }
}
