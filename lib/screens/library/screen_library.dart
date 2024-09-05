import 'package:flutter/material.dart';

class ScreenLibrary extends StatefulWidget {
  const ScreenLibrary({super.key});

  @override
  State<ScreenLibrary> createState() => _ScreenLibraryState();
}

class _ScreenLibraryState extends State<ScreenLibrary> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Librarry page")),
    );
  }
}