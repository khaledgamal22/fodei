import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/core/utilits/widgets/custom_textfeild.dart';

class ChangePassViewBody extends StatelessWidget {
  const ChangePassViewBody({super.key});

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
            'Change New Password',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Enter a different password ',
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
          ),
          SizedBox(
            height: 70,
          ),
          CustomTextFeild(
            hint: '**** ****',
            header: 'New Password',
          ),
          SizedBox(height: 20,),
          CustomTextFeild(
            hint: '**** ****',
            header: 'Confirm Password',
          ),
          Spacer(),
          Align(
            alignment: Alignment.center,
            child: CustomButton(
              width: 256,
              height: 55,
              title: Text(
                'Reset Password',
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
