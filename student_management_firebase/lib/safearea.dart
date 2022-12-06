import 'package:flutter/material.dart';

class NewProgram extends StatefulWidget {
  const NewProgram({super.key});

  @override
  State<NewProgram> createState() => _NewProgramState();
}

class _NewProgramState extends State<NewProgram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: const Text("I am a container"),
          ),
        ),
      ),
    );
  }
}
