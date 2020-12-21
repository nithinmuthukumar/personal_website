import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/constants/styles.dart';
import 'dart:html' as html;
class ProjectCard extends StatefulWidget {
  final String title;
  final Image img;
  final String details;
  final Map<String,String> links;

  ProjectCard(this.title, this.img, this.details, this.links);
  @override
  State<ProjectCard> createState() {
    return _ProjectCardState();
  }
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    print(widget.img);
    return Card(



      elevation: 10,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.videogame_asset_rounded),
            title: Text(widget.title,style: projectCardTitleStyle),
            subtitle: Text(widget.details),



          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ClipRRect(

              borderRadius: BorderRadius.circular(8.0),
              child: widget.img,

            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     for(var item in widget.links.entries)
          //       FlatButton(
          //         minWidth: 0,
          //         child: Image.asset("assets/"+item.key+"_icon.png",width:30),
          //         onPressed: (){
          //           html.window.open(item.value, '_blank');
          //         },
          //       )
          //   ]
          //
          // )
          

        ],
      ),
      shadowColor: Colors.red,


    );

  }
}