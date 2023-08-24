import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mataam_app/features/splash/presentation/view_models/register_cubit/register_cubit.dart';
import 'package:mataam_app/features/splash/presentation/views/widgets/register_form.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../core/utilits/app_routes.dart';
import '../../../../../core/utilits/functions.dart';

class RegisterSheet extends StatelessWidget {
  RegisterSheet({super.key});

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterLoading) {
          isLoading = true;
        } else if (state is RegisterFailure) {
          showSnack(context, state.errorMessage);
          isLoading = false;
        } else if (state is RegisterSucsees) {
          isLoading = false;
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
              child: RegisterForm(),
            ),
          ),
        );
      },
    );
  }
}
