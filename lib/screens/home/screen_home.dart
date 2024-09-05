import 'package:flutter/material.dart';
import 'package:medhyam/screens/home/widgets/carousel_slider_widget.dart';
import 'package:medhyam/screens/home/widgets/image_gridview.dart';
import 'package:medhyam/screens/home/widgets/search_widget.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

final List<String> imageList = [
  'https://via.placeholder.com/600x300.png?text=Image+1',
  'https://via.placeholder.com/600x300.png?text=Image+2',
  'https://via.placeholder.com/600x300.png?text=Image+3',
  'https://via.placeholder.com/600x300.png?text=Image+4',
];

final List<String> images = [
  'https://via.placeholder.com/300x300.png?text=Image+1',
  'https://via.placeholder.com/300x300.png?text=Image+2',
  'https://via.placeholder.com/300x300.png?text=Image+3',
  'https://via.placeholder.com/300x300.png?text=Image+4',
];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBarWidget(),
          ImageCarouselSlider(
            imageList: imageList,
            height: 200.0,
            autoPlay: false,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Quick Services",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          // Wrap the GridView in a Container with a fixed height
          SizedBox(
            height: 600.0, // Set a fixed height for the GridView
            child: ImageGridView(imageList: images),
          ),
        ],
      ),
    );
  }
}
