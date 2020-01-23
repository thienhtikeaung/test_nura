import 'package:flutter/material.dart';
import 'package:test_nura/todayLecturepages/bottom_nav_call_history_lecture.dart';
import 'package:test_nura/todayLecturepages/bottom_nav_home_page.dart';

class BottomNavigationPage extends StatefulWidget {
  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int _selectedBottomNavigationIndext = 0;
  static List<Widget> _widgetOptions = [
    BottomNavHomePage(),
    BottomNavCallHistory()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedBottomNavigationIndext),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), title: Text("Call History")),

        ],
        currentIndex: _selectedBottomNavigationIndext,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int indext) {
    setState(() {
      _selectedBottomNavigationIndext = indext;
    });
  }
}
