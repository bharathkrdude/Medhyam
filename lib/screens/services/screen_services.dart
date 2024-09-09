import 'package:flutter/material.dart';
import 'package:medhyam/screens/home/screen_home.dart';
import 'package:medhyam/screens/home/widgets/search_widget.dart';

class ScreenServices extends StatefulWidget {
  const ScreenServices({super.key});

  @override
  State<ScreenServices> createState() => _ScreenServicesState();
}

class _ScreenServicesState extends State<ScreenServices> {
  @override
  Widget build(BuildContext context) {
    final List<String> image = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/04/Navaratri_Bajan.jpg/640px-Navaratri_Bajan.jpg',
  'https://shorturl.at/Fvtvg',
  'https://shorturl.at/Zsg2c',
  'https://shorturl.at/m0jb6',
];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(), // Adds smooth scrolling behavior
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBarWidget(),
          // Similar to ScreenHome, align the grid view
          
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
                      opacity: 0.6,
                      image: NetworkImage(image[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      index < 4 ? ['Bhajan', 'Socials', 'Aarti', 'Temples'][index] : '',
                      style: const TextStyle(
                        
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Padding for Medhyam Blogs section
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Medhyam Blogs",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
           Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("assets/images/shiva.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    width: double.infinity,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    padding: const EdgeInsets.symmetric(vertical: 5),
                                    child: Center(
                                      child: Text(
                                        "Sample Text",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
        ],
      ),
    );
  }
}
