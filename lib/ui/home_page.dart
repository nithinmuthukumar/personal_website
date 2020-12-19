import 'package:flutter/material.dart';
import 'package:personal_website/widgets/bouncing_ball.dart';
import 'package:personal_website/widgets/centered_view.dart';
import 'package:personal_website/widgets/expanding_image.dart';
import 'dart:js' as js;
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
                padding: EdgeInsets.fromLTRB(200, 0, 0, 50),
                child: Row(


                  children: [

                    Material(
                      // needed
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => (){
                          js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);

                        },
                        splashColor: Colors.red,// needed
                        child: ExpandingImage(imagePath: "assets/itch_icon.png",
                          finalHeight: 100,
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds:7200),),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Material(
                      // needed
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => (){
                          js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);

                        },
                        splashColor: Colors.blue,// needed
                        child: ExpandingImage(imagePath: "assets/github_icon.png",
                          finalHeight: 110,
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds: 7400),),
                      ),
                    ),

                    SizedBox(width: 10,),

                    Material(
                      // needed
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => (){
                          js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);

                        },
                        splashColor: Colors.blue,// needed
                        child: ExpandingImage(imagePath: "assets/linkedin_icon.png",
                          finalHeight: 100,
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds: 7600),),
                      ),
                    ),
                    SizedBox(width: 10,),

                    Material(
                      // needed
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () => (){
                          js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);

                        }, //
                        splashColor: Colors.purple,// needed
                        child: ExpandingImage(imagePath: "assets/devpost_icon.png",
                          finalHeight: 115,
                          duration: Duration(milliseconds: 1000),
                          delay: Duration(milliseconds: 7800),),
                      ),
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
