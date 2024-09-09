import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/screens/astro/screen_astro.dart';
import 'package:medhyam/screens/astro/temp/my_design_screen.dart';
import 'package:medhyam/screens/home/screen_home.dart';
import 'package:medhyam/screens/library/screen_library.dart';
import 'package:medhyam/screens/mandir/screen_mandir.dart';
import 'package:medhyam/screens/services/screen_services.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const ScreenHome(),
    const MyDesignsScreen(),
    const ScreenMandir(),
    const ScreenServices(),
     AstrologerListingPage(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: white,
        
        toolbarHeight: 50, // Increased toolbar height
        leading: Padding(
          padding: const EdgeInsets.all(8.0), // Adjusted padding
          child: Container(
            width: 80, // Increased width for the image
            height: 80, // Increased height for the image
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/MedhyamLogo.png'),
                fit: BoxFit.contain, // Adjust the fit if needed
              ),
            ),
          ),
        ),
        actions: [
          Builder(
            builder: (context) => Padding(
              padding: const EdgeInsets.only(right: 16.0), // Adjusted padding for menu
              child: IconButton(
                iconSize: 40, // Increased icon size
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 0;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.search),
                title: const Text('Search'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 1;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Notifications'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 2;
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    _currentIndex = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
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
        fixedColor: borderColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.other_houses_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_phone_outlined),
            label: 'Astro',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.temple_hindu_outlined),
            label: 'Mandir',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.spa_outlined),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
