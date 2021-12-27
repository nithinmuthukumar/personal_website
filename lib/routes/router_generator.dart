import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/routes/routes.dart';
import 'package:personal_website/ui/about_page.dart';
import 'package:personal_website/ui/home_page.dart';
import 'package:personal_website/ui/projects_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case routeAbout:
        return MaterialPageRoute(builder: (_) => AboutPage());
        break;
      case routeProjects:
        return MaterialPageRoute(builder: (_) => ProjectsPage());
        break;
    }
    return MaterialPageRoute(builder: (_) => HomePage());
  }
}
