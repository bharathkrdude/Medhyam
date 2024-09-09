import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color borderColor;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textColor, // Added text color parameter
    required this.borderColor, // Added border color parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: textColor), // Dynamic text color
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // White background
        side: BorderSide(color: borderColor), // Dynamic border color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
      ),
    );
  }
}
