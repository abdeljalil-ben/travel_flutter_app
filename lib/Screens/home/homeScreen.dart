import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Constantes.dart';
import 'package:travel_flutter_app/Screens/main/main_screen.dart';
import 'package:travel_flutter_app/models/projects.dart';
import 'package:travel_flutter_app/models/recommendation.dart';


import 'components/heidhlights_info.dart';
import 'components/home_banner.dart';
import 'components/my_projects.dart';
import 'components/project_card.dart';
import 'components/recommedations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainScreen(
       children: [
         HomeBanner(),
         HeighlightsInfo(),
         MyProjects(),
         Recommendationn()


       ],
    );
  }
}

