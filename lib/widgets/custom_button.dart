import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.color,
      required this.colortext,
      this.onTap,
      this.icon});
  final String title;
  final Color color;
  final Color colortext;
  final void Function()? onTap;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: colortext,
              fontSize: 20
              ),
          ),
        ),
        width: 256,
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}

class CustomGoolgeButton extends StatelessWidget {
  const CustomGoolgeButton(
      {super.key,
      required this.title,
      required this.color,
      required this.colortext,
      this.onTap,
      });
  final String title;
  final Color color;
  final Color colortext;
  final void Function()? onTap;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'http://pngimg.com/uploads/google/google_PNG19635.png',
              height: 45,
              ),
            SizedBox(width: 15,),
            Text(
              title,
              style: TextStyle(
                color: colortext,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        width: 256,
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
