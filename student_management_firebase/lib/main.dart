import 'package:student_management_firebase/screen/gridScreen.dart';
import 'package:student_management_firebase/screen/calculatorApp.dart';

import 'simpleInterest.dart';
import 'arithmeticOutput.dart';
import 'arithmetic.dart';
import 'package:flutter/material.dart';
import 'columnScreen.dart';
import 'listTileScreen.dart';
import 'safearea.dart';
import 'imageScreen.dart';
import 'studentDetails.dart';
import 'cardScreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      initialRoute: '/calc',
      routes: {
        '/': (context) => const Arithmetic(),
        '/arithOutputScreen': (context) => const ArithmeticOutputScreen(),
        '/simpleInterest': (context) => const SimpleInterest(),
        '/columnScreen': (context) => const ColumnScreen(),
        '/listTile': (context) => const ListTileScreen(),
        '/safearea': (context) => const NewProgram(),
        '/imageScreen': (context) => const ImageScreen(),
        '/student': (context) => const StudentDetailStateScreen(),
        '/card': (context) => const cardScreen(),
        '/cardbutton': (context) => const GridScreen(),
        '/calc': (context) => const CalculatorAppScreen(),
      },
    ),
  );
}
