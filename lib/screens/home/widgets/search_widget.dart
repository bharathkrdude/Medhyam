import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],  // Light grey background
          borderRadius: BorderRadius.circular(18),  // Rounded corners
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.grey[700], // Icon color
              ),
              const SizedBox(width: 10), // Space between icon and text
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,  // Remove underline
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
