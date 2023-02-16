import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];

  List<String> preguntas = [
    '¿Los globulos rojos viven 4 meses?',
    '¿El cuerpo humano adulto tiene 306 huesos?',
    '¿La cobalamina es una vitamina?',
  ];

  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff034732),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    preguntas[numeroPregunta],
                    style: const TextStyle(color: Colors.white, fontSize: 26),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          numeroPregunta++;
                          puntuacion.add(const Icon(
                            Icons.check,
                            color: Colors.green,
                          ));
                        });
                      },
                      child: const Text(
                        'Verdadero',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          numeroPregunta++;
                          puntuacion.add(const Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                        });
                      },
                      child: const Text(
                        'Falso',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ),
            ),
            Row(
              children: puntuacion,
            )
          ],
        ),
      ),
    );
  }
}
