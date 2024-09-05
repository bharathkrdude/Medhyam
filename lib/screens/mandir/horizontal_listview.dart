import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  final List<String> imageList;

  const HorizontalListView({super.key, required this.imageList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100, // Height of the list view
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 80, // Width of each image item
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                ClipOval(
                  child: Image.asset(
                    imageList[index], // Use asset images here
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Image ${index + 1}',
                  style: const TextStyle(color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
