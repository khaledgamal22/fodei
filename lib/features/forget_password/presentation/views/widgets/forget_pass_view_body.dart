import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/core/utilits/widgets/custom_textfeild.dart';

class ForgetPassViewBody extends StatelessWidget {
  const ForgetPassViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            'Forget Password',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Enter your registered email below',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
          ),
          SizedBox(
            height: 70,
          ),
          CustomTextFeild(
            hint: 'Eg nameemail@emailkamue.com',
            header: 'Email address',
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Text(
                'Remember the password?',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: Text(
                  'Sign in',
                  style: TextStyle(fontSize: 15, color: kPrimaryColor),
                ),
              ),
            ],
          ),
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              width: 256,
              height: 55,
              title: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              color: kPrimaryColor,
            ),
          )
        ],
      ),
    );
  }
}
