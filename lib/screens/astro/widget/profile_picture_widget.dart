import 'package:flutter/material.dart';

class CircularProfilePicture extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const CircularProfilePicture({
    Key? key,
    required this.imageUrl,
    this.radius = 50.0,  // Default radius
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: NetworkImage(imageUrl),  // Use AssetImage if you want to load from assets
      backgroundColor: Colors.transparent,  // Can set a default background color if image is missing
    );
  }
}
