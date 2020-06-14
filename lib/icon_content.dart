import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.strText, @required this.iconData});

  final String strText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 80.0),
        SizedBox(
          height: 15.0,
        ),
        Text(
          strText,
          style: kTxtLabelStyle,
        )
      ],
    );
  }
}
