import 'package:flutter/cupertino.dart';

class ExpandingImage extends StatefulWidget {
  final String imagePath;
  final double finalHeight;
  final Duration delay;
  final Duration duration;

  const ExpandingImage ({ required this.imagePath, required this.duration, required this.delay,required this.finalHeight }): super();
  @override
  State<ExpandingImage> createState() {
    return _ExpandingImageState();
  }
}

class _ExpandingImageState extends State<ExpandingImage> with TickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      lowerBound: 0,
      upperBound: widget.finalHeight

    )..addListener(() {
      setState(() {});
    });
    Future.delayed(widget.delay,(){
      controller.forward();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.imagePath,height: controller.value);

  }
}