import 'package:flutter/material.dart';

class CalculatorAppScreen extends StatefulWidget {
  const CalculatorAppScreen({super.key});

  @override
  State<CalculatorAppScreen> createState() => _CalculatorAppScreenState();
}

class _CalculatorAppScreenState extends State<CalculatorAppScreen> {
  @override
  Widget build(BuildContext context) {
    final InputController = TextEditingController();

    String output = '1';
    List<String> buttons = [
      "C",
      "*",
      "/",
      "<-",
      "1",
      "2",
      "3",
      "4",
      "+",
      "5",
      "6",
      "-",
      "7",
      "8",
      "9",
      "*",
      "%",
      "0",
      ".",
      "="
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            alignment: Alignment.centerRight,
            child: Text(output),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              children: [
                for (var items in buttons)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        output = items.toString();
                      });
                    },
                    child: Text(items),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
