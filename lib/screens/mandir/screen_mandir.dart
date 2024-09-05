import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart'; // Make sure this path is correct
import 'package:medhyam/screens/mandir/horizontal_listview.dart'; // Adjust path as needed

class ScreenMandir extends StatefulWidget {
  const ScreenMandir({super.key});

  @override
  State<ScreenMandir> createState() => _ScreenMandirState();
}

final List<String> images = [
  'assets/images/ganapathi.jpeg',
  'assets/images/devi.jpeg',
  'assets/images/krishna.jpeg',
  'assets/images/lakshmi.jpeg',
  'assets/images/shiva.jpeg',
];

class _ScreenMandirState extends State<ScreenMandir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Lord Ganapathi",
                style: TextStyle(color: black, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            height: 120, // Fixed height for the horizontal list view
            child: HorizontalListView(imageList: images),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.98,
                color: Colors.amber,
                child: Image.asset(
                  'assets/images/ganapathi.jpeg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
