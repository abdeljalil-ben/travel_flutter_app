import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_flutter_app/Components/animated_progress_indicator.dart';
import 'package:travel_flutter_app/Constantes.dart';
import 'package:travel_flutter_app/Constantes.dart';
import 'package:travel_flutter_app/Screens/main/Components/skills.dart';
import 'Knowledges.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'myInfo.dart';

class sideMenu extends StatelessWidget {
  const sideMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            MyPersonalInformation(),
            Expanded(child: SingleChildScrollView(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                children: [
                  Place_of_Residance_info(
                      LabelCountry : "Residance",
                      Country:"Algeria",
                  ),
                  Place_of_Residance_info(
                    LabelCountry : "State",
                    Country:"Souk Ahras",
                  ),
                  Place_of_Residance_info(
                    LabelCountry : "Age",
                    Country:"22",
                  ),
                  Skills(),
                  SizedBox(height: defaultPadding),
                  WebDevSkills(),
                  Certifcate_te(),
                  Divider(),
                  SizedBox(height:defaultPadding/2),
                  TextButton(onPressed:() {},
                      child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyText1.color,
                          ),
                        ),
                        SizedBox(width: defaultPadding/2),
                        SvgPicture.asset("assets/icons/download.svg"),
                      ],
                  )),
                  Container(
                    margin: EdgeInsets.only(top:defaultPadding),
                    color: Color(0xFF2424E),
                    child: Row(
                      children: [
                        Spacer(),
                        IconButton(
                            icon:SvgPicture.asset("assets/icons/linkedin.svg"),
                            onPressed: (){}),
                        IconButton(
                            icon:SvgPicture.asset("assets/icons/github.svg"),
                            onPressed: (){}),
                        IconButton(
                            icon:SvgPicture.asset("assets/icons/twitter.svg"),
                            onPressed: (){}),
                        Spacer()
                      ],
                    ),
                  )

              ],
          ),
         ),
            ),
      ],
     ),
   );
  }
}

