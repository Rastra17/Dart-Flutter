import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListTileScreen extends StatefulWidget {
  const ListTileScreen({super.key});

  @override
  State<ListTileScreen> createState() => _ListTileScreenState();
}

class _ListTileScreenState extends State<ListTileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: const ListTile(
        leading: Icon(Icons.accessible_forward),
        title: Text('Bibek Khicha'),
        subtitle: Text('Kathmandu, Nepal'),
        trailing: Icon(Icons.delete),
      ),
    );
  }
}
