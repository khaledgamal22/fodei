import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.borderRadius, this.aspect=2.9/3});
  final BorderRadius borderRadius;
  final double aspect;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspect,
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