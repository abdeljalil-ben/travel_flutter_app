import 'package:flutter/material.dart';
import 'package:travel_flutter_app/models/recommendation.dart';

import '../../../Constantes.dart';

class Recommendation_Card extends StatelessWidget {
  const Recommendation_Card({
    Key key, this.recommendation,
  }) : super(key: key);
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(recommendation.name,
              style: Theme.of(context).textTheme.subtitle2),
          Text(recommendation.source),
          const SizedBox(height: defaultPadding,),
          Text(recommendation.text,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style:TextStyle(height:1.5),),

        ],
      ),
    );
  }
}
