import 'package:flutter/widgets.dart';
import 'package:personal_website/constants/styles.dart';

class TypingText extends StatefulWidget {
  final String text;
  final Duration duration;
  final Duration delay;


  const TypingText ({required this.text, required this.duration, required this.delay  }): super();





  @override
  State<TypingText> createState() {
    return _TypingTextState();

  }
}

class _TypingTextState extends State<TypingText> with TickerProviderStateMixin {
  int index=0;
  late AnimationController controller;
  late Animation<int> typeAnimation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,




    );
    typeAnimation = IntTween(begin: 0, end:widget.text.length-1).animate(controller)..addListener(() {
      setState(() {});
    });
    Future.delayed(widget.delay,(){
      controller.forward();
    });



  }

  @override
  Widget build(BuildContext context) {
    return Text(widget.text.substring(0,typeAnimation.value),style: aboutStyle,textAlign: TextAlign.left,) ;


  }
}