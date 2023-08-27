import 'package:flutter/material.dart';
import 'package:mataam_app/constant.dart';

class BookingAppBar extends StatelessWidget {
  const BookingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Booking History',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
    );
  }
}
