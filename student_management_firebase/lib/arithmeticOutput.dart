import 'package:flutter/material.dart';

class ArithmeticOutputScreen extends StatefulWidget {
  const ArithmeticOutputScreen({super.key});

  @override
  State<ArithmeticOutputScreen> createState() => _ArithmeticOutputScreenState();
}

class _ArithmeticOutputScreenState extends State<ArithmeticOutputScreen> {
  @override
  Widget build(BuildContext context) {
    final result = ModalRoute.of(context)!.settings.arguments as dynamic;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Result is $result',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
