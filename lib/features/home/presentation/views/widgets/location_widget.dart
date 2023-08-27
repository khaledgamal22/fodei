import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key, required this.text, this.crossAxisAlignment=CrossAxisAlignment.center});

  final String text;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.locationDot,
          color: kPrimaryColor,
          size: 14,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              color: Color(0xff6B7280),
            ),
          ),
        ),
      ],
    );
  }
}