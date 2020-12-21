import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constants/styles.dart';
import 'dart:html' as html;
class ProjectCard extends StatefulWidget {
  final String title;
  final String imgPath;
  final String details;
  final Map<String,String> links;

  ProjectCard(this.title, this.imgPath, this.details, this.links);
  @override
  State<ProjectCard> createState() {
    return _ProjectCardState();
  }
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {

    return Card(



      elevation: 10,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.videogame_asset_rounded),
            title: Text(widget.title,style: projectCardTitleStyle),
            subtitle: Text(widget.details),



          ),
          Expanded(child: Image.asset(widget.imgPath)),
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                for(var item in widget.links.entries)
                  FlatButton(
                    minWidth: 0,
                    child: Image.asset("assets/"+item.key+"_icon.png",width:30),
                    onPressed: (){
                      html.window.open(item.value, '_blank');
                    },
                  )
              ]

          )



        ],
      ),
      shadowColor: Colors.red,


    );

  }
}
//TODO: Make this into a popup menu
