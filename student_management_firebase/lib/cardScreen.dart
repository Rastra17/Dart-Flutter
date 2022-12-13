import 'package:flutter/material.dart';

class cardScreen extends StatefulWidget {
  const cardScreen({super.key});

  @override
  State<cardScreen> createState() => _cardScreenState();
}

class _cardScreenState extends State<cardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
            height: 300,
            width: double.infinity,
            child: Card(
                color: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text(
                    'This is a card',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ))),
      ),
    );
  }
}
