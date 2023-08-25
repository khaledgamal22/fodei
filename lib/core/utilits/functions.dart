import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';

void showSnack(BuildContext context,String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: kPrimaryColor,
        content: Text(errorMessage,style:const TextStyle(
          fontSize: 18,
        ),
        ),
        elevation: 5,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height-100,
        ),
      ),
    );
  }