import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constantes.dart';

class Heighlights extends StatelessWidget {
  const Heighlights({
    Key key, this.counter, this.label,
  }) : super(key: key);
  final Widget counter;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding /2),
        Text(
          label,
          style: Theme.of(context).textTheme.subtitle1,
        )

      ],
    );
  }
}

