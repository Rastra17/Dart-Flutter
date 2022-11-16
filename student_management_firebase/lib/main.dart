import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App"),
          backgroundColor: const Color.fromARGB(255, 43, 209, 173),
          elevation: 0,
        ),
        body: const Text(
          'Something',
          style: TextStyle(fontSize: 16),
        ),
      ),
    ),
  );
}