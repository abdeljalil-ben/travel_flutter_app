import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../Constantes.dart';



class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
    aspectRatio: 3,
    child: Stack(
      fit:StackFit.expand,
      children: [
        Image.asset(
            "assets/images/mon.jpg",
        fit: BoxFit.cover),
        Container(color: darkColor.withOpacity(0.66),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:  defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My crcicilum Vitae  \n Art Space",
                style: Theme.of(context).textTheme.headline3.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
              BuildAnimationText(),
              SizedBox(height: defaultPadding),
              ElevatedButton(
                  onPressed: (){},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2,
                        vertical: defaultPadding),
                    backgroundColor: primaryColor,
                  ),
                  child:Text(
                      "Explore Now",
                  style: TextStyle(color: darkColor)
                  ),
                         )

            ],
          ),
        )
      ],
    ),

    );
  }
}

class BuildAnimationText extends StatelessWidget {
  const BuildAnimationText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1,
      child: Row(
        children: [
          Fluttercodetext(),
          SizedBox(width: defaultPadding/2),
          Text(" build "),
          AnimatedTextKit(
              animatedTexts:[
                TyperAnimatedText("Curriculum Vitae for web App",
                speed: Duration(milliseconds:60)),
                TyperAnimatedText("Curriculum Vitae Ui",
                    speed: Duration(milliseconds:60
                ),
                )

              ]
          ),
          SizedBox(width: defaultPadding/2),
          Fluttercodetext(),
        ],
      ),
    );
  }
}

class Fluttercodetext extends StatelessWidget {
  const Fluttercodetext({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
    children:[
    TextSpan(
        text:"flutter",
        style:TextStyle(color:primaryColor)
    ),
      TextSpan(
        text: ">",),
                     ],
      ),
    );
  }
}
