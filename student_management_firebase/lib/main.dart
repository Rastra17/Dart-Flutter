import 'simpleInterest.dart';
import 'arithmeticOutput.dart';
import 'arithmetic.dart';
import 'package:flutter/material.dart';
import 'columnScreen.dart';
import 'listTileScreen.dart';
import 'safearea.dart';
import 'imageScreen.dart';
import 'studentDetails.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: '/student',
      routes: {
        '/': (context) => const Arithmetic(),
        '/arithOutputScreen': (context) => const ArithmeticOutputScreen(),
        '/simpleInterest': (context) => const SimpleInterest(),
        '/columnScreen': (context) => const ColumnScreen(),
        '/listTile': (context) => const ListTileScreen(),
        '/safearea': (context) => const NewProgram(),
        '/imageScreen': (context) => const ImageScreen(),
        '/student': (context) => const StudentDetailStateScreen(),
      },
    ),
  );
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
