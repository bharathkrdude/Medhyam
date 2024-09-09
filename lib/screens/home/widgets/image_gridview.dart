import 'package:flutter/material.dart';

class ImageGridView extends StatelessWidget {
  final List<String> imageList;
  final List<String> titles;
  final double itemWidth;
  final double itemHeight;
  final double spacing;

  const ImageGridView({
    Key? key,
    required this.imageList,
    required this.titles,
    required this.itemWidth,
    required this.itemHeight,
    this.spacing = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: spacing, // Space between columns
        mainAxisSpacing: spacing, // Space between rows
        childAspectRatio: itemWidth / itemHeight, // Adjust child size ratio
      ),
      padding: const EdgeInsets.all(8.0), // Padding around the grid
      itemCount: imageList.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              width: itemWidth,
              height: itemHeight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                  image: NetworkImage(imageList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Container(
                  color: Colors.black54, // Overlay to darken the background
                  padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  child: Text(
                    titles[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
