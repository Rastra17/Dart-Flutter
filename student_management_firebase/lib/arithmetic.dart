import 'package:flutter/material.dart';

class Arithmetic extends StatefulWidget {
  const Arithmetic({super.key});

  @override
  State<Arithmetic> createState() => _ArithmeticState();
}

class _ArithmeticState extends State<Arithmetic> {
  String? choice;
  int result = 0;
  final _firstController =
      TextEditingController(); //Reads changes in text field
  final _secondController = TextEditingController();

  final _globalKey = GlobalKey<FormState>();

  void _add() {
    setState(() {
      result =
          int.parse(_firstController.text) + int.parse(_secondController.text);
    });
    Navigator.pushNamed(context, '/arithOutputScreen',
        arguments:
            result); //This method redirects and also pushes values to other routes
  }

  void _substract() {
    setState(() {
      result =
          int.parse(_firstController.text) - int.parse(_secondController.text);
    });
    Navigator.pushNamed(context, '/arithOutputScreen', arguments: result);
  }

  void _multiply() {
    setState(() {
      result =
          int.parse(_firstController.text) * int.parse(_secondController.text);
    });
    Navigator.pushNamed(context, '/arithOutputScreen', arguments: result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addition"),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              TextFormField(
                controller: _firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  hintText: "Enter First Number.",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87)),
                  hintText: "Enter Second Number.",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RadioListTile(
                title: const Text("Add"),
                value: "add",
                groupValue: choice,
                onChanged: (value) {
                  setState(() {
                    choice = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text("Substract"),
                value: "substract",
                groupValue: choice,
                onChanged: (value) {
                  setState(() {
                    choice = value.toString();
                  });
                },
              ),
              RadioListTile(
                title: const Text("Multiply"),
                value: "multiply",
                groupValue: choice,
                onChanged: (value) {
                  setState(() {
                    choice = value.toString();
                  });
                },
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black87),
                  ),
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      if (choice == "add") {
                        _add();
                      } else if (choice == "substract") {
                        _substract();
                      } else if (choice == "multiply") {
                        _multiply();
                      } else {
                        print("Khichha");
                      }
                    }
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
