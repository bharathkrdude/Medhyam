import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/core/constants.dart';
import 'package:medhyam/screens/astro/widget/astrologer_card.dart';
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
    return Scaffold(
      backgroundColor: backgroundColorlightgrey,
      appBar: AppBar(
        title: Text('Astrologers'),
        surfaceTintColor: white,
        backgroundColor: white,
        actions: [
          FilterButton(),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 5, // Replace with your actual item count
        itemBuilder: (context, index) {
          return AstrologerCard();
        },
      ),
    );
  }
}
