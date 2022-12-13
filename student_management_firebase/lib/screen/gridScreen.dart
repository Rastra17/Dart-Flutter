import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(8),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          for (int i = 0; i < 10; i++) customButtons(i.toString()),
        ],
      ),
    );
  }

  Widget customButtons(String title) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          title,
        ),
        onPressed: () {
          MotionToast.info(
            description: Text('Button $title was clicked'),
          ).show(context);
        },
      ),
    );
  }
}
