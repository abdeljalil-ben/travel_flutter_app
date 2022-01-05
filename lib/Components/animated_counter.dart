import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constantes.dart';

class AnimatedCounterSocialMedias extends StatelessWidget {
  const AnimatedCounterSocialMedias({
    Key key, this.value, this.text,
  }) : super(key: key);
  final int value;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        tween: IntTween(begin: 0 ,end:value ),
        duration: Duration(seconds: 5),
        builder: (context,value,child)=>
            Text(
              "$value$text",
              style: Theme.of(context).textTheme.headline6.copyWith(color: primaryColor),

            ));
  }
}

