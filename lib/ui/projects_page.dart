import 'package:flutter/material.dart';
import 'package:personal_website/widgets/project_card.dart';

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
              "Topdown battle royale game created with Libgdx for ICS4U Final Project.",
              {"github":"https://github.com/nithinmuthukumar/Conquest"}),
          ProjectCard("LastStand", "assets/LastStand.png",
              "Tower Defence game created with Libgdx for ICS4U.",
              {"github":"https://github.com/nithinmuthukumar/LastStand"}),

        ]
      ),
      margin: EdgeInsets.fromLTRB(120, 0, 120, 0),
    );
  }
}