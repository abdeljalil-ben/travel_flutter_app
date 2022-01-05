import 'package:flutter/material.dart';
class MyPersonalInformation extends StatelessWidget {
  const MyPersonalInformation({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,
      child:Container(
        color:Color(0xFF242430),
        child: Column(
          children: [
            Spacer(flex: 2),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage("assets/images/forCv.jpg"),
            ),
            Spacer(),
            Text(
              "Abdeljalil",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Undergraduate student at the College of Artificial Intelligence",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5
              ) ,

            ),
            Spacer(flex: 2),
          ],
        ),
      )
      ,);
  }
}