import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stack(
        alignment: AlignmentDirectional.center ,
        children: [
          Container(color: Colors.amber, height: 300,),
          Container(color: Colors.blue, width: 100,height: 200,),
          Container(color: Colors.green, width: 50,height: 100),
        ],
      ),
    );
  }
}
