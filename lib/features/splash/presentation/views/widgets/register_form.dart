import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';
import '../../view_models/register_cubit/register_cubit.dart';
import 'custom_button.dart';
import 'custom_google_button.dart';
import 'custom_textfeild.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? fullname;

  String? email;

  String? password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Column(
        children: [
          CustomTextFeild(
            header: 'Full Name',
            hint: 'Enter your full name',
            onChanged: (value) {
              fullname = value;
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(
            header: 'Email Address',
            hint: 'Eg nameemail@emailkamue.com',
            onChanged: (value) {
              email = value;
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFeild(
            header: 'Password',
            hint: '**** **** ****',
            onChanged: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                BlocProvider.of<RegisterCubit>(context).registerUser(
                  fullname: fullname!,
                  email: email!,
                  password: password!,
                );
              }
              else{
                autovalidateMode=AutovalidateMode.always;
              }
              setState(() {
                
              });
            },
            title: 'Register',
            color: kPrimaryColor,
            colortext: Colors.white,
          ),
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
    );
  }
}
