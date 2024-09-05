import 'package:flutter/material.dart';

class ImageGridView extends StatelessWidget {
  final List<String> imageList;

  const ImageGridView({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 8.0, // Space between columns
        mainAxisSpacing: 8.0, // Space between rows
      ),
      padding: const EdgeInsets.all(8.0), // Padding around the grid
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: NetworkImage(imageList[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
