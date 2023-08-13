import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/widgets/custom_button.dart';
import 'package:mataam_app/widgets/custom_textfeild.dart';

import 'custom_google_button.dart';

class RegisterSheet extends StatelessWidget {
  const RegisterSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
        ),
        child: Column(
          children: [
            CustomTextFeild(
              header: 'Full Name',
              hint: 'Enter your full name',
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFeild(
              header: 'Email Address',
              hint: 'Eg nameemail@emailkamue.com',
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextFeild(
              header: 'Password',
              hint: '**** **** ****',
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                title: 'Register',
                color: kPrimaryColor,
                colortext: Colors.white),
            Divider(
              color: Colors.grey,
              indent: 70,
              endIndent: 70,
              height: 30,
            ),
            CustomGoolgeButton(
              title: 'Sign up with Google',
              color: Colors.grey.withOpacity(0.2),
              colortext: Colors.black,
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
