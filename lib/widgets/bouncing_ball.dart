import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:html' as html;
class BouncingBallDemo extends StatefulWidget {
  final double initX;
  const BouncingBallDemo ({  required this.initX }): super();

  @override
  BouncingBall createState() => BouncingBall();
}

class BouncingBall extends State<BouncingBallDemo> with TickerProviderStateMixin {
  late AnimationController controller;
  double dx = 260;
  double dy = 0;
  double vx = 0.8;
  double vy = 0;
  Color color = [Colors.red,Colors.green,Colors.blue,Colors.purple,Colors.pink][Random().nextInt(5)];
  void initState() {
    super.initState();
    dx+=widget.initX;
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
      lowerBound: 0,
      upperBound: 200,

    );


    controller.addListener(() {
      setState((){
        dx-=vx;
        if(dy>100){
          vy-=controller.value/1000;

        }else{
          vy+=controller.value/1000;
        }
        dy+=vy;
        if(dx<0&&dy<0){
          controller.stop(canceled: true);
        }
      });
    });

    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        margin: EdgeInsets.only(bottom:max(0,dy),left: max(dx,0),top:20),


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




