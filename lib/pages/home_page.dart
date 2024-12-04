import 'package:flutter/material.dart';
import 'utils/userhome.dart';
import 'utils/userreels.dart';
import 'utils/usershop.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserReels(),
    UserShop(),
    UserHome(),
    UserHome(),
    // Add more UserHome, UserReels, UserShop widgets as needed.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "post"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profie")
        ],
      ),
    );
  }
}
