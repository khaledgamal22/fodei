import 'package:flutter/material.dart';

class OnboardPageItem extends StatelessWidget {
  const OnboardPageItem({super.key, required this.image, required this.title, required this.subTitle});

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 70,),
          Image.asset(
            image,
            height: MediaQuery.of(context).size.height * 0.45,
          ),
          Text(title,textAlign: TextAlign.center,style: const TextStyle(fontSize: 32,fontWeight: FontWeight.w500,),),
          const SizedBox(height: 25,),
          Text(subTitle,textAlign: TextAlign.center,style: const TextStyle(color: Color(0xff4B5563),fontSize: 15,),),
        ],
      ),
    );
  }
}