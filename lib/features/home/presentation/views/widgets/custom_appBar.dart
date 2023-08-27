import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/location_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.bars),
        Spacer(),
        Icon(FontAwesomeIcons.locationDot,size: 16,color: kPrimaryColor,),
        Text('Santah, Tanta'),
        Spacer(),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/346780424_714371070489212_836219911072118910_n.jpg'),
        )
      ],
    );
  }
}
