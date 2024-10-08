import 'package:flutter/material.dart';
import 'package:medhyam/core/colors.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    required this.storyimg,
    Key? key,
  }) : super(key: key);
  final String storyimg; //storys[index]['name'],

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 10.0),
      child: Column(
        children: [
          Container(
            height: 67,
            width: 67,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: storyBorderColor,
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                    border: Border.all(color: black, width: 2),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(storyimg), fit: BoxFit.cover)),
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
        
        ],
      ),
    );
  }
}