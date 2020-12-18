import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';
class BouncingBallDemo extends StatefulWidget {
  _BouncingBallDemoState createState() => _BouncingBallDemoState();
}

class _BouncingBallDemoState extends State<BouncingBallDemo> with TickerProviderStateMixin {
  AnimationController controller;
  double dx = 260;
  double dy = 0;
  double vx = 0.6;
  double vy = 0;
  Color color = [Colors.red,Colors.green,Colors.blue,Colors.purple,Colors.pink][Random().nextInt(5)];
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0,
      upperBound: 200,

    );

    controller.addListener(() {
      setState((){
        dx-=vx;
        print(dy);
        if(dy>100){
          vy-=controller.value/1000;

        }else{
          vy+=controller.value/1000;
        }
        dy+=vy;
        if(dx<0&&dy<0){
          controller.reset();
        }
      });
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.only(bottom:max(0,dy),left: max(dx,0)),


        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          width: 20.0,
          height: 20.0,
        )
    );
  }
}




