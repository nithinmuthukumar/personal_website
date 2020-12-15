import 'package:flutter/material.dart';
import 'package:personal_website/widgets/navigation_bar.dart';


class AppView extends StatefulWidget {
  final Widget child;

  const AppView({@required this.child});

  @override
  _AppViewState createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [NavigationBar(), Expanded(child: widget.child)],
      ),
    );
  }
}
