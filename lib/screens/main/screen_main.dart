import 'package:flutter/material.dart';
import 'package:medhyam/screens/widgets/bottom_navigation_widget.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
       
        bottomNavigationBar: BottomNavigationWidget(),
      ),
    );
  }
}
