import 'package:flutter/material.dart';
import 'package:travel_flutter_app/Constantes.dart';
class Place_of_Residance_info extends StatelessWidget {
  const Place_of_Residance_info({
    Key key,
    this.LabelCountry,
    this.Country,
  }) : super(key: key);
  final String LabelCountry ,Country;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            LabelCountry,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            Country,
          )
        ],
      ),
    );
  }
}

