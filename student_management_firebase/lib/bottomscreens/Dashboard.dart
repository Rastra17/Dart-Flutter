import 'package:flutter/material.dart';
import 'package:student_management_firebase/bottomscreens/aboutScreen.dart';
import 'package:student_management_firebase/bottomscreens/categoryScreen.dart';
import 'package:student_management_firebase/bottomscreens/homeScreen.dart';
import 'package:student_management_firebase/bottomscreens/profileScreen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedIndex = 0;

  List<Widget> listBottomScreens = [
    const HomeScreen(),
    const AboutScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        centerTitle: true,
      ),
      body: listBottomScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amber,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.question_mark),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
