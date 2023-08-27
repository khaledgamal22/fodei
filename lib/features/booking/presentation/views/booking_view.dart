import 'package:flutter/material.dart';
import 'package:mataam_app/features/booking/presentation/views/widgets/booking_view_body.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: BookingViewBody(),
      ),
    );
  }
}