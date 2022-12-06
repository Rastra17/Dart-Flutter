import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/206359/pexels-photo-206359.jpeg?cs=srgb&dl=pexels-pixabay-206359.jpg&fm=jpg'),
                  fit: BoxFit.fill),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
          ), // Uses the size of its parent
        ),
      ),
    ); // Uses the whole screen
  }
}
