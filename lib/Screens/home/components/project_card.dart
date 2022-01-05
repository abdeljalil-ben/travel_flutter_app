import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_flutter_app/models/projects.dart';

import '../../../Constantes.dart';

class Projects_card extends StatelessWidget {
  const Projects_card({
    Key key, this.project,
  }) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:Theme.of(context).textTheme.subtitle2,),
            Spacer(),
            Text(
              project.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            Spacer(),
            TextButton(onPressed: (){},
              child: Text("Read more >>" ,
                style: TextStyle(color:primaryColor),
              )
              ,)
          ],
        )   );
  }
}


