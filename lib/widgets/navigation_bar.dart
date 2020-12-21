import 'package:flutter/material.dart';
import 'package:personal_website/constants/styles.dart';
import 'package:personal_website/routes/routes.dart';

import 'navigation_item.dart';
import 'dart:html' as html;

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.asset('assets/logo.jpg'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavigationItem(
                selected: index == 0,
                title: 'Home',
                routeName: routeHome,
                onHighlight: onHighlight,
              ),
              NavigationItem(
                selected: index == 1,
                title: 'About',
                routeName: routeAbout,
                onHighlight: onHighlight,
              ),
              GestureDetector(
                onTap: () {
                  html.window.open("https://api.flutter.dev/flutter/widgets/Expanded-class.html", '_blank');

                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text('Resume', style: kPageTitleStyle,)
                ),
              ),

              NavigationItem(
                selected: index == 3,
                title: 'Projects',
                routeName: routeProjects,
                onHighlight: onHighlight,
              )
            ],
          )

        ],
      ),
    );
  }

  void onHighlight(String route) {
    switch (route) {
      case routeHome:
        changeHighlight(0);
        break;
      case routeAbout:
        changeHighlight(1);
        break;
      case routeProjects:
        changeHighlight(3);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
