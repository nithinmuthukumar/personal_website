import 'package:flutter/material.dart';
import 'package:personal_website/widgets/project_card.dart';

import '../widgets/project_card.dart';
import '../widgets/project_card.dart';

class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 50,

        children: [ProjectCard("Soulless","assets/soulless.png",
            "Platformer created with Unity for the Ludum Dare Game Jam",
            {"github":"https://github.com/nithinmuthukumar/Soulless",
              "itch":"https://nithinmuthukumar.itch.io/soulless"}),

          ProjectCard("Conquest", "assets/Conquest.png",
              "Topdown base building battle royale game created with Libgdx for ICS4U Final Project.",
              {"github":"https://github.com/nithinmuthukumar/Conquest"}),
          ProjectCard("LastStand", "assets/LastStand.png",
              "Tower Defence game created with Libgdx for ICS4U.",
              {"github":"https://github.com/nithinmuthukumar/LastStand"}),
          ProjectCard("Omnisyncr","assets/Omnisyncr.png" ,
              "Chrome extension to sync watching shows with friends",
              {"github":"https://github.com/nithinmuthukumar/OmniSyncr",
                "devpost":"https://devpost.com/software/omnisyncr"}),
          ProjectCard("SignVision", "assets/original.png",
              "Sign vision is an android app that improves communication and accessibility at local businesses and services.\n Winner of Best Hack for the Community at Neighbourhood Hacks",
              {"github":"https://github.com/SignVision/Sign-Vision","devpost":"https://devpost.com/software/sign-vision"})

        ]
      ),
      margin: EdgeInsets.fromLTRB(120, 0, 120, 0),
    );
  }
}