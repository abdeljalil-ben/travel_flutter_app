import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Screens/home/components/recommendation_card.dart';
import 'package:travel_flutter_app/models/recommendation.dart';

import '../../../Constantes.dart';

class Recommendationn extends StatelessWidget {
  const Recommendationn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Recommendation",
            style: Theme.of(context).textTheme.headline6,),
          const SizedBox(height: defaultPadding,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(demo_recommendations.length,
                      (index) => Padding(
                    padding: const EdgeInsets.only(right: defaultPadding),
                    child: Recommendation_Card(recommendation: demo_recommendations[index],),
                  ),)


            ),
          )
        ],
      ),
    );
  }
}


