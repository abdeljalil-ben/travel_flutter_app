
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../../../Constantes.dart';

class Certifcate_te extends StatelessWidget {
  const Certifcate_te({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Certificate",
            style: Theme.of(context).textTheme.subtitle2,

          ),
        ),
        Cirtificate(text: "Computer Engineering"),
        Cirtificate(text: "Artificial Intelegent" + " ""not yet"),
        Cirtificate(text: "maching Learning "+ " ""not yet"),
        Cirtificate(text: "Web development" + " " "not yet"),
      ],
    );
  }
}

class Cirtificate extends StatelessWidget {
  const Cirtificate({
    Key key, this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding/2),
      child: Row(
        children: [SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding/2),
          Text(text),
        ],
      ),
    );
  }
}

