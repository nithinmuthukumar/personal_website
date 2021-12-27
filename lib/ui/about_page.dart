import 'package:flutter/material.dart';
import 'package:personal_website/widgets/typing_text.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,



        children: [
          SizedBox(height: 200),
          TypingText(text: "Hey there!\n",
              duration: Duration(milliseconds: 500),
              delay: Duration(milliseconds: 0)),
          SizedBox(height: 10),
          TypingText(text: "I'm an aspiring software developer currently in my second year of undergrad.\n",
              duration: Duration(milliseconds: 3000),
              delay: Duration(milliseconds: 1500)),
          SizedBox(height: 10),
          TypingText(text: "I enjoy participating in hackathons and game jams.\n",
              duration: Duration(milliseconds: 3000),
              delay: Duration(milliseconds: 5500)),
          SizedBox(height: 10),
          TypingText(text: "In my free time I enjoy playing League of Legends and Teamfight Tactics.\n",
              duration: Duration(milliseconds: 3000),
              delay: Duration(milliseconds: 9000)),
          SizedBox(height: 10),
          TypingText(text: "Checkout my projects to see what I've worked on!\n",
              duration: Duration(milliseconds: 3000),
              delay: Duration(milliseconds: 12500)),
          SizedBox(height: 10),

        ],

      ),
    );

  }
}
