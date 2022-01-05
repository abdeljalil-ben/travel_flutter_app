import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Constantes.dart';

import '../Constantes.dart';
class AnimationCircularProgressIndicator extends StatelessWidget {
  const AnimationCircularProgressIndicator({
    Key key, this.Percent, this.label,
  }) : super(key: key);
final double Percent;
final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0,end: Percent),
          duration: defaultDuration,
          builder: (context,double value,child)=>
          Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                backgroundColor: darkColor,
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber)
              ),
              Center(
                child: Text(
                    (value *100).toInt().toString() + "%",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          )
          ),
        ),
    SizedBox(height: defaultPadding/2),
    Text(
      label,
      maxLines:1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.subtitle2,
    )
                ],
              );
  }
}

class Animation_lenear_progress extends StatelessWidget {
  const Animation_lenear_progress({
    Key key, this.percent, this.label,
  }) : super(key: key);
  final double percent;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0,end: percent),
          duration: defaultDuration,
          builder: (context,double value,child)=>
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Text(
                        label,
                        style: Theme.of(context).textTheme.subtitle1, ),
                      Text((100 * value).toInt().toString() + "%"),
                    ],
                  ),
                  SizedBox(height: defaultPadding/2),
                  LinearProgressIndicator(
                    value:value ,
                    backgroundColor: darkColor,
                    valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),
                  ),

                ],
              )
      ),
    );
  }
}

