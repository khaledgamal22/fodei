import 'package:flutter/material.dart';

void showSnack(BuildContext context,String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
      ),
    );
  }