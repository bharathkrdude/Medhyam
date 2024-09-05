import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarouselSlider extends StatefulWidget {
  final List<String> imageList;  // Accept a list of images as a parameter
  final double height;
  final bool autoPlay;

  const ImageCarouselSlider({
    Key? key,
    required this.imageList,
    this.height = 400.0,
    this.autoPlay = true,
  }) : super(key: key);

  @override
  _ImageCarouselSliderState createState() => _ImageCarouselSliderState();
}

class _ImageCarouselSliderState extends State<ImageCarouselSlider> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.imageList.map((imageUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: widget.height,
            autoPlay: widget.autoPlay,
            enlargeCenterPage: false,   // Disable enlarge center image effect
            viewportFraction: 1.0,      // Show only one image at a time
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageList.map((url) {
            int index = widget.imageList.indexOf(url);
            return Container(
              width: 10.0,
              height: 10.0,
              margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Colors.blueAccent
                    : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
