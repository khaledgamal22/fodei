import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import '../../../../../core/utilits/app_routes.dart';
import '../../view_models/login_cubit/login_cubit.dart';
import 'custom_button.dart';
import 'custom_google_button.dart';
import 'custom_textfeild.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? email;

  String? password;

  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFeild(
            header: 'Email Address',
            hint: 'Eg nameemail@emailkamue.com',
            onChanged: (data) {
              email = data;
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            header: 'Password',
            hint: '**** **** ****',
            onChanged: (data) {
              password = data;
            },
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoute.kForgetpass);
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            title: 'Login',
            color: kPrimaryColor,
            colortext: Colors.white,
            onTap: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<LoginCubit>(context)
                    .loginUser(email: email!, password: password!);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {
                
              });
            },
          ),
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
    );
  }
}
