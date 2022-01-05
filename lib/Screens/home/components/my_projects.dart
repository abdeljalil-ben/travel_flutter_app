import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Screens/home/components/project_card.dart';
import 'package:travel_flutter_app/models/projects.dart';

import '../../../Constantes.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My Projects",
            style:Theme.of(context).textTheme.headline6),
        const SizedBox(height: defaultPadding,),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: demo_projects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding *1
          ),
          itemBuilder :(context,index)=>
              Projects_card(project: demo_projects[index],),

        )
      ],
    );
  }
}

