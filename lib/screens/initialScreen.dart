import 'package:flutter/material.dart';
import '../components/Task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade == true ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: ListView(
          children: const [
            Task(
                'Lavar louça',
                'assets/images/louca.webp',
                1),
            Task(
                'Varrer casa',
                'assets/images/varrer.jpg',
                2),
            Task(
                'Aprender Flutter',
                'assets/images/flutter.png',
                5),
            Task(
                'Texto extremamente grande para teste',
                'assets/images/test.png',
                0),
            SizedBox(
              height: 80,
            ),
            // colors(Colors.white, Colors.black, Colors.pink),
            // colors(Colors.red, Colors.black, Colors.pink),
            // colors(Colors.grey, Colors.black, Colors.pink),
            // colors(Colors.green, Colors.black, Colors.pink),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
