import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:js' as js;
class ProjectCard extends StatefulWidget {
  final String title;
  final Image img;
  final String details;
  final String gitLink;

  ProjectCard(this.title, this.img, this.details, this.gitLink);
  @override
  State<ProjectCard> createState() {
    return _ProjectCardState();
  }
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/logo.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
          child: Text("YOUR TEXT"),
        ),
        onTap:(){
          js.context.callMethod('open', ['https://stackoverflow.com/questions/ask']);
        },

      ),

    );

  }
}