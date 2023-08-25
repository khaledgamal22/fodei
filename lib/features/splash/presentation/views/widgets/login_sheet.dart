import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:mataam_app/core/utilits/app_routes.dart';
import 'package:mataam_app/features/splash/presentation/view_models/login_cubit/login_cubit.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/login_form.dart';

import '../../../../../core/utilits/functions.dart';

class LoginSheet extends StatelessWidget {
  const LoginSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginLoading) {
        } else if (state is LoginFailure) {
          showSnack(context, state.errorMessage);
        } else if (state is LoginSuccess) {
          GoRouter.of(context).push(AppRoute.kHomeId);
        }
      },
      builder: (context, state) {
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
                  child: LoginForm(),
                ),
              );
      },
    );
  }
}
