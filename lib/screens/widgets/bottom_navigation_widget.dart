import 'package:flutter/material.dart';
import 'package:medhyam/screens/core/colors.dart';
import 'package:medhyam/screens/screen_astro.dart';
import 'package:medhyam/screens/screen_home.dart';
import 'package:medhyam/screens/screen_library.dart';
import 'package:medhyam/screens/screen_mandir.dart';
import 'package:medhyam/screens/screen_services.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ScreenHome(),
    const ScreenAstro(),
    const ScreenMandir(),
    const ScreenServices(),
    const ScreenLibrary(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        unselectedItemColor: hintTextColor,
        unselectedIconTheme: const IconThemeData(color: hintTextColor),
        backgroundColor: backgroundColorWhite,
        type: BottomNavigationBarType.fixed,
        fixedColor: textColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Astro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: 'Mandhir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
