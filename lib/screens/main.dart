import 'package:flutter/material.dart';
import 'initialScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const InitialScreen());
  }
}

// class colors extends StatelessWidget {
//   final Color cor1;
//   final Color cor2;
//   final Color cor3;
//   const colors(this.cor1, this.cor2, this.cor3, {Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Container(height: 100, width: 50 ,color: cor1,),
//           Container(height: 100, width: 50 ,color: cor2),
//           Container(height: 100, width: 50 ,color: cor3)
//         ],
//       ),
//     );
//   }
// }

