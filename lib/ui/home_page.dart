import 'package:flutter/material.dart';
import 'package:personal_website/widgets/centered_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Nithin\nMuthukumar',
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 80, height: 0.9),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Computer Science Student at UofT Scarborough.\nSeeking a coop for 2021.',
            style: TextStyle(fontSize: 21, height: 1.7),
          ),
        ],
      ),
    );
  }
}
