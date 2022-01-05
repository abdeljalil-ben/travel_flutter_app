import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Components/animated_progress_indicator.dart';
import 'package:travel_flutter_app/Constantes.dart';
class Skills extends StatelessWidget {
  const Skills({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Mobile Development Skills"
            ,style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
                child:AnimationCircularProgressIndicator(
                  Percent:0.5,
                  label: "Flutter",
                ) ),
            SizedBox(width: defaultPadding),
            Expanded(
                child:AnimationCircularProgressIndicator(
                  Percent:0.35,
                  label: "Swift",
                ) ),
            SizedBox(width: defaultPadding),
            Expanded(
              child:AnimationCircularProgressIndicator(
                Percent:0.25,
                label: "kotlin",
              ),
            ),
          ],
        ),

      ],
    );
  }
}

