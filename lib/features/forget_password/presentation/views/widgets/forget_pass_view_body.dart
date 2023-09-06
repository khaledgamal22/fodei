import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/constant.dart';
import 'package:mataam_app/core/utilits/functions.dart';
import 'package:mataam_app/core/utilits/widgets/custom_button.dart';
import 'package:mataam_app/core/utilits/widgets/custom_textfeild.dart';
import 'package:mataam_app/features/forget_password/presentation/view_models/cubit/forgetpassword_cubit.dart';

class ForgetPassViewBody extends StatefulWidget {
  const ForgetPassViewBody({super.key});

  @override
  State<ForgetPassViewBody> createState() => _ForgetPassViewBodyState();
}

class _ForgetPassViewBodyState extends State<ForgetPassViewBody> {
  String? email;

  final GlobalKey<FormState> formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return BlocConsumer<ForgetpasswordCubit, ForgetpasswordState>(
      listener: (context, state) {
        if(state is ForgetpasswordSucces){
          showSnack(context, state.successMessage);
        }
        else if(state is ForgetpasswordFailure){
          showSnack(context, state.errorMessage);
        }
      },
      builder: (context, state) {
        return Form(
          key: formkey,
          child: Padding(
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
                  onChanged: (p0) {
                    email = p0;
                    setState(() {});
                  },
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
                    onTap: () {
                      if(formkey.currentState!.validate()){
                        BlocProvider.of<ForgetpasswordCubit>(context).forgetPassReset(email: email!);
                      }
                      autovalidateMode=AutovalidateMode.always;
                      setState(() {
                        
                      });
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
