import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/core/constants.dart';
import 'package:medhyam/screens/astro/widget/filter_button_widget.dart';
import 'package:medhyam/screens/astro/widget/profile_picture_widget.dart';
import 'package:medhyam/screens/library/screen_library.dart';

class ScreenAstro extends StatefulWidget {
  const ScreenAstro({super.key});

  @override
  State<ScreenAstro> createState() => _ScreenAstroState();
}

class _ScreenAstroState extends State<ScreenAstro> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Astrolgers", style: TextStyles.heading2),
                FilterButton(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Replace with your actual item count
              itemBuilder: (context, index) {
                return AstrologerCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}