import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyGame extends StatefulWidget {
  const MyGame({super.key});

  @override
  State<MyGame> createState() => _MyGameState();
}

class _MyGameState extends State<MyGame> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(01.0),
                    child: Text(
                      'Jogo da Velha',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromARGB(255, 207, 21, 21),
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      ' Pontuação:',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 224, 15, 15),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myButton(linha: 0, coluna: 0),
                  myButton(linha: 0, coluna: 1),
                  myButton(linha: 0, coluna: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myButton(linha: 1, coluna: 0),
                  myButton(linha: 1, coluna: 1),
                  myButton(linha: 1, coluna: 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myButton(linha: 2, coluna: 0),
                  myButton(linha: 2, coluna: 1),
                  myButton(linha: 2, coluna: 2),
                ],
              )
            ],
          ),
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Vamos começar',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 83, 24, 220),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(),
              Text(
                'Player 1',
              ),
              TextField(),
              Text('Player 2'),
            ],
          ),
        ],
      ),
    );
  }

  Widget myButton({required int linha, required int coluna}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(78, 78),
            backgroundColor: Color.fromARGB(95, 23, 38, 206)),
        child: const Text(
          'X',
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
