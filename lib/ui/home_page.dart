import 'package:flutter/material.dart';
import 'package:personal_website/widgets/bouncing_ball.dart';
import 'package:personal_website/widgets/centered_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BouncingBallDemo(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BouncingBallDemo(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: BouncingBallDemo(),
          )

          //Image.asset("assets/logo.jpg")
        ],
      ),
      margin: EdgeInsets.only(left: 100),
    );
  }
}
