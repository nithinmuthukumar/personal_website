import 'package:flutter/material.dart';
import 'package:personal_website/widgets/bouncing_ball.dart';
import 'package:personal_website/widgets/centered_view.dart';
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
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
              Stack(
                children: [
                  BouncingBallDemo(initX: 30),
                  BouncingBallDemo(initX: 60),
                  BouncingBallDemo(initX: 90)

                ],
              ),
            ],
          ),





          //Image.asset("assets/logo.jpg")
        ],
      ),
      margin: EdgeInsets.only(left: 100),
    );
  }
}
