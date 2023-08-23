import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mataam_app/core/utilits/app_routes.dart';
import 'package:mataam_app/features/splash/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../constant.dart';
import '../../../../../core/utilits/functions.dart';
import 'custom_button.dart';
import 'custom_google_button.dart';
import 'custom_textfeild.dart';

class LoginSheet extends StatelessWidget {
  LoginSheet({super.key});

  bool isLoading = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
          isLoading = true;
        } else if (state is LoginFailure) {
          showSnack(context, state.errorMessage);
          isLoading=false;
        } else if (state is LoginSuccess) {
          isLoading=false;
          GoRouter.of(context).push(AppRoute.kHomeId);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Padding(
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
                    onChanged: (data) {
                      email='mcbsbcks';
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFeild(
                    header: 'Password',
                    hint: '**** **** ****',
                    onChanged: (data){
                      password=data;
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
                      BlocProvider.of<LoginCubit>(context).loginUser(email: email!, password: password!);
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
            ),
          ),
        );
      },
    );
  }

  
}
