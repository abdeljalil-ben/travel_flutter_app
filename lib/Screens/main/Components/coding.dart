import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Components/animated_progress_indicator.dart';

import '../../../Constantes.dart';

class WebDevSkills extends StatelessWidget {
  const WebDevSkills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Web Development Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Animation_lenear_progress(
          label: "Html",
          percent: 0.70,
        ),
        Animation_lenear_progress(
          label: "Css",
          percent: 0.75,
        ),
        Animation_lenear_progress(
          label: "JavaScript",
          percent: 0.70,
        )
      ],
    );
  }
}

