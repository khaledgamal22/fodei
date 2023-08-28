import 'package:flutter/material.dart';
import 'package:mataam_app/features/forget_password/presentation/views/widgets/change_pass_view_body.dart';

class ChangePassView extends StatelessWidget {
  const ChangePassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangePassViewBody(),
    );
  }
}