import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/core/utilits/widgets/custom_circular_indicator.dart';

import '../../../../../constant.dart';
import '../../../../../core/utilits/app_routes.dart';
import '../../view_models/login_cubit/login_cubit.dart';
import '../../../../../core/utilits/widgets/custom_button.dart';
import 'custom_google_button.dart';
import '../../../../../core/utilits/widgets/custom_textfeild.dart';

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
              setState(() {
                email = data;
              });
            },
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFeild(
            header: 'Password',
            hint: '**** **** ****',
            onChanged: (data) {
              setState(() {
                password = data;
              });
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
            width: 256,
            height: 55,
            title: BlocProvider.of<LoginCubit>(context).state is LoginLoading
                ? CustomCircularIndicator()
                : Text(
                    'Login',
                    style: TextStyle(
                      color: (email == null || password == null)
                          ? Color(0xff9CA3AF)
                          : Colors.white,
                      fontSize: 20,
                    ),
                  ),
            color: (email == null || password == null)
                ? const Color(0xffF4F4F4)
                : kPrimaryColor,
            onTap: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<LoginCubit>(context)
                    .loginUser(email: email!, password: password!);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
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
