import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/widgets/custom_button.dart';

class FirstViewBody extends StatelessWidget {
  const FirstViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/scholar.png',
            height: 300,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text('By enjoying Foodmedia Services Please Register First'),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'Create Account',
            color: kPrimaryColor,
            colortext: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            title: 'Login',
            color: Color(0xffD1FAE5),
            colortext: Color(0xff10B981),
          ),
        ],
      ),
    );
  }
}
