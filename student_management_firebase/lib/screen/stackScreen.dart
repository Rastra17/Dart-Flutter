import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack')),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topRight,
            children: [
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: 300,
                child: Image.network(
                    "https://media.istockphoto.com/id/1194231231/photo/number-one-shaped-as-a-hole-in-concrete-wall-victory-concept.jpg?b=1&s=170667a&w=0&k=20&c=W5LXWrNMGHykyJ2YKhbv2ZfhICAANVyt0pC1pvFe_Rg="),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
              Positioned(
                bottom: -55,
                right: 5,
                child: IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomRight,
            children: [
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: 300,
                child: Image.network(
                    "https://animepatrol.com/wp-content/uploads/2022/11/Solo-Leveling-Anime-Release-Date.jpg"),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
              ),
              Positioned(
                bottom: 5,
                right: 5,
                child: IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
