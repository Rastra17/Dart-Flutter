import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key}); //The key tracks each changes within the app
  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  int first = 0, second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add two numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              onChanged: (firstValue) {
                first = int.parse(firstValue);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter first number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              onChanged: (secondValue) {
                second = int.parse(secondValue);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter second number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first + second;
                  });
                },
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Text(
              "The sum is: $result",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
