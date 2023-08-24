import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mataam_app/core/utilits/app_routes.dart';
import 'package:mataam_app/features/splash/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/login_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/utilits/functions.dart';

class LoginSheet extends StatelessWidget {
  LoginSheet({super.key});

  bool isLoading = false;
  
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
              child: LoginForm(),
            ),
          ),
        );
      },
    );
  }

  
}
