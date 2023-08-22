import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'custom_button.dart';
import 'custom_google_button.dart';
import 'custom_textfeild.dart';

class LoginSheet extends StatelessWidget {
  const LoginSheet({super.key});

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
              header: 'Email Address',
              hint: 'Eg nameemail@emailkamue.com',
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFeild(
              header: 'Password',
              hint: '**** **** ****',
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(
                title: 'Login', color: kPrimaryColor, colortext: Colors.white),
            Divider(
              color: Colors.grey,
              indent: 70,
              endIndent: 70,
              height: 30,
            ),
            CustomGoolgeButton(
              title: 'Login with Google',
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
