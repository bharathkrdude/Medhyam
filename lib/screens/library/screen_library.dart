import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:medhyam/core/colors.dart';
import 'package:medhyam/core/constants.dart';
import 'package:medhyam/screens/astro/widget/custom_elevated_button.dart';
import 'package:medhyam/screens/astro/widget/filter_button_widget.dart';

class AstrologerListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorlightgrey,
      appBar: AppBar(title: Text('Astrologers'),surfaceTintColor: white,backgroundColor: white, actions: [ FilterButton(),SizedBox(width: 10,)],),
      body: ListView.builder(
        itemCount: 5, // Replace with your actual item count
        itemBuilder: (context, index) {
          return AstrologerCard();
        },
      ),
    );
  }
}

class AstrologerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white, // Set the background color to white
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start of the row
          children: [
            // Column for Avatar and Rating
            Column(
              children: [
                // Container for the avatar with a thick border
                Container(
                  padding: EdgeInsets.all(3), // Space between avatar and border
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.red, // Random color for the border
                      width: 4, // Thickness of the border
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("http://surl.li/fybenl"),
                  ),
                ),
                SizedBox(height: 5), // Space between the avatar and rating
                // Box for the rating with a star
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white, // White background
                    borderRadius: BorderRadius.circular(8), // Rounded corners for the box
                    border: Border.all(color: Colors.grey), // Grey border
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min, // Adjusts to the content size
                    children: [
                      Text(
                        '4.3', // The rating value
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5), // Space between the rating and star icon
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16, // Adjust the star size
                      ),
                    ],
                  ),
                ),
                 
              ],
            ),
            SizedBox(width: 10),
            // Expanded widget to prevent overflow
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Ramamoorthy', style: TextStyles.heading2),
                      ),
                      Icon(Icons.verified, color: Colors.blue, size: 20),
                    ],
                  ),
                  kHeight10,
                  Text('Exp: 20 years', style: TextStyles.hintTextStyle1),
                  Text('Lang: English, Hindi', style: TextStyles.hintTextStyle1),
                  Text('Vedic, Numerology ', style: TextStyles.hintTextStyle2),
   VerticalDivider(
                    color: Colors.grey, // Color of the divider
                    thickness: 1, // Thickness of the divider
                    width: 10, // Space before and after the divider
                  ),
                ],
              ),
            ),
            // Center-aligned Vertical Divider
            kHeight50,
            Column(
              children: [
                kHeight50,
                Text('₹18/min', style: TextStyle(fontSize: 12, decoration: TextDecoration.lineThrough)),
                Text('Free Call', style: TextStyle(color: Colors.red, fontSize: 12)),
              ],
            ),
                
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                width: 20,
              ),
            ),
            // Column for pricing and buttons
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                CustomElevatedButton(
                  text: "Chat",
                  onPressed: () {},
                  textColor: Colors.blue,
                  borderColor: Colors.blue,
                ),
                SizedBox(height: 10),
                CustomElevatedButton(
                  text: "Call",
                  onPressed: () {},
                  textColor: Colors.green,
                  borderColor: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to generate a random color
  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );
  }
}
