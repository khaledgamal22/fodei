import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.bars),
        Icon(FontAwesomeIcons.locationDot),
        Text('Agrabad 435, Chittagong'),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/scholar.png'),
        )
      ],
    );
  }
}
