import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.borderRadius});
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.9 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          image: DecorationImage(
            image: AssetImage('assets/images/pasta-italiano.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}