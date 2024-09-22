import 'package:flutter/material.dart';
import 'package:medhyam/core/constants.dart';

class MyDesignsScreen extends StatelessWidget {
  const MyDesignsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1B1F),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            SizedBox(height: 20),
            SizedBox(height: 20),
            DesignCardWidget(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class DesignCardWidget extends StatelessWidget {
  const DesignCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage("assets/images/KrishnaJanmashtami.webp"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          // Content inside the image container
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Know when in Sreekrishana Jayanthi 2024-",
                    style: TextStyles.bodyTextWhite,
                  ),
                  kHeight5,
                  Text(
                    "What is the story of this auspicious day?",
                    style: TextStyles.bodyTextWhite2,
                  ),
                  kHeight10,
                ],
              ),
            ),
          ),
          // The container below the image, merged with the above container
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.076,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    "https://shorturl.at/M1ZPL",
                  ),
                ),
                kWidth10,
                Text("Jhanvi Sharma", style: TextStyles.heading3),
                kWidth10,
                const Icon(
                  Icons.radio_button_checked_outlined,
                  color: Colors.grey,
                  size: 14,
                ),
                kWidth5,
                Text("10 min read", style: TextStyles.hintTextStyle1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
