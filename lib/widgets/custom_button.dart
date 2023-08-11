import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.color, required this.colortext});
  final String title;
  final Color color;
  final Color colortext;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        
      },
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: colortext),
          ),
        ),
        width: 256,
        height: 49,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
    
      ),
    );
  }
}