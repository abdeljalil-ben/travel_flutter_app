import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Constantes.dart';

import 'Components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({key, this.children }) : super(key: key);
final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,

                //this part of proprities specallze fot part of image 
                child: sideMenu(),


              ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex:7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                       ...children,
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    ); // We hide the appbar on desktop
  }
}

