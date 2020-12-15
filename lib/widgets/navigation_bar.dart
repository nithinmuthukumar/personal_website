import 'package:flutter/material.dart';
import 'package:personal_website/routes/routes.dart';

import 'navigation_item.dart';


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
              NavigationItem(
                selected: index == 2,
                title: 'Contact',
                routeName: routeContacts,
                onHighlight: onHighlight,
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
      case routeContacts:
        changeHighlight(2);
        break;
    }
  }

  void changeHighlight(int newIndex) {
    setState(() {
      index = newIndex;
    });
  }
}
