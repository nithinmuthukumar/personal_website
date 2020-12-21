import 'package:flutter/material.dart';
import 'package:personal_website/widgets/bouncing_ball.dart';
import 'package:personal_website/widgets/centered_view.dart';
import 'package:personal_website/widgets/expanding_image.dart';
import 'dart:js' as js;
import 'dart:html' as html;
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

              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 50),
                child: Row(


                  children: [

                    FlatButton(

                      onPressed: (){
                        html.window.open('https://itch.io/profile/nithinmuthukumar', '_blank');
                      },
                      splashColor: Colors.red,
                      child: ExpandingImage(imagePath: "assets/itch_icon.png",
                        finalHeight: 100,
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(milliseconds:7200),),

                    ),

                    SizedBox(width: 10,),
                    FlatButton(
                      onPressed: (){
                        html.window.open('https://github.com/nithinmuthukumar', '_blank');
                      },
                      child: ExpandingImage(imagePath: "assets/github_icon.png",
                        finalHeight: 110,
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(milliseconds: 7400),),
                    ),

                    SizedBox(width: 10,),
                    FlatButton(
                      onPressed: (){
                        html.window.open('https://www.linkedin.com/in/nithin-muthukumar-681219162/', '_blank');
                      },
                      child: ExpandingImage(imagePath: "assets/linkedin_icon.png",
                        finalHeight: 100,
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(milliseconds: 7600),),
                    ),
                    SizedBox(width: 10,),
                    FlatButton(
                      onPressed: (){
                        html.window.open('https://devpost.com/nithinmuthuklumar?ref_content=user-portfolio&ref_feature=portfolio&ref_medium=global-nav', '_blank');

                      },
                      child: ExpandingImage(imagePath: "assets/devpost_icon.png",
                        finalHeight: 125,
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(milliseconds: 7800),),
                    )
                  ],
                ),
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
