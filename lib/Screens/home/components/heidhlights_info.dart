
import 'package:flutter/cupertino.dart';
import 'package:travel_flutter_app/Components/animated_counter.dart';

import '../../../Constantes.dart';
import 'heigh_light.dart';

class HeighlightsInfo extends StatelessWidget {
  const HeighlightsInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Heighlights(
            counter :AnimatedCounterSocialMedias(
              value: 100,
              text: "+",
            ),
            label: "Subsucribers",
          ),
          Heighlights(
            counter :AnimatedCounterSocialMedias(
              value: 0,
              text: "+",
            ),
            label: "Videos",
          ),
          Heighlights(
            counter :AnimatedCounterSocialMedias(
              value: 5,
              text: "+",
            ),
            label: "Gethub Projects",
          ),
          Heighlights(
            counter :AnimatedCounterSocialMedias(
              value: 0,
              text: "+",
            ),
            label: "Stack Over Flow Stars",
          ),
        ],
      ),
    );
  }
}
