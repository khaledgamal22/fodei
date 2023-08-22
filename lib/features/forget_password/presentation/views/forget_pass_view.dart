import 'package:flutter/material.dart';
import 'package:mataam_app/features/forget_password/presentation/views/widgets/forget_pass_view_body.dart';

class ForgetPassView extends StatelessWidget {
  const ForgetPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgetPassViewBody(),
    );
  }
}