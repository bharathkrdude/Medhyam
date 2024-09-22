import 'package:flutter/material.dart';
import 'package:medhyam/screens/home/widgets/carousel_slider_widget.dart';
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
  'https://imgk.timesnownews.com/story/HoroscopeToday.jpg?tr=w-400,h-300,fo-auto',
  'https://miro.medium.com/v2/resize:fit:670/1*GVDRO2bYRBkGxS9tpKsv8w.jpeg',
  'https://images.herzindagi.info/image/2021/Apr/navratri-chaitra-m.jpg',
  'https://mir-s3-cdn-cf.behance.net/projects/404/bb1bd5162852049.Y3JvcCwyMzM1LDE4MjYsOTUzLDU2Ng.jpg',
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child:  SearchBarWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageCarouselSlider(
              imageList: imageList,
              height: 200.0,
              autoPlay: false,
            ),
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
  padding: const EdgeInsets.all(16.0),
  child: GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Number of columns
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      childAspectRatio: 1.2,
    ),
    itemCount: images.length,
    itemBuilder: (context, index) {
      // Define the texts for each index
      final List<String> texts = [
        'Daily\nHoroscope',
        'kundali\nmatching',
        'Daily\nPanchang',
        'Hindu\nCalender'
      ];

      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(images[index]),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.black.withOpacity(0.45), // Overlay with semi-transparent black
          ),
          child: Center(
            child: Text(
              texts[index], // Assign text based on index
              textAlign: TextAlign.center, // Center the text both vertically and horizontally
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                height: 1.4, // Controls spacing between the two lines
              ),
            ),
          ),
        ),
      );
    },
  ),
)

          // After the GridView, place your text
         
          
        ],
      ),
    );
  }
}
