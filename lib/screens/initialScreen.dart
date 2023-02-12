import 'package:alura_projeto/screens/form_screen.dart';
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
      body: ListView(
        children: const [

          SizedBox(
            height: 80,
          ),
          // colors(Colors.white, Colors.black, Colors.pink),
          // colors(Colors.red, Colors.black, Colors.pink),
          // colors(Colors.grey, Colors.black, Colors.pink),
          // colors(Colors.green, Colors.black, Colors.pink),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
