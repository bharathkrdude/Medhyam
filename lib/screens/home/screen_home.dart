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
  'https://i.ytimg.com/vi/aEukFF7bFpY/mqdefault.jpg',
  'https://via.placeholder.com/600x300.png?text=Image+2',
  'https://via.placeholder.com/600x300.png?text=Image+3',
  'https://via.placeholder.com/600x300.png?text=Image+4',
];

final List<String> images = [
  'https://imgk.timesnownews.com/story/Daily_Horoscope_-_Sep_28.png?tr=w-400,h-300,fo-auto',
  'https://via.placeholder.com/300x300.png?text=Image+2',
  'https://via.placeholder.com/300x300.png?text=Image+3',
  'https://via.placeholder.com/300x300.png?text=Image+4',
];

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
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
          // Remove the fixed height and wrap the GridView with ShrinkWrap
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true, // This makes GridView take the height of its content
              physics: const NeverScrollableScrollPhysics(), // Disable internal scrolling
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10.0, // Space between columns
                mainAxisSpacing: 10.0, // Space between rows
                childAspectRatio: 1.8, // Adjust to get the right aspect ratio for images
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(images[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      index < 4 ? [' ', ' ', ' ', ' '][index] : '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.black45,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // After the GridView, place your text
         
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
