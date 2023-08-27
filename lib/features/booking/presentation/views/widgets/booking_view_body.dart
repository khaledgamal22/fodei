import 'package:flutter/material.dart';
import 'package:mataam_app/features/booking/presentation/views/widgets/custom_booking_appBar.dart';

class BookingViewBody extends StatelessWidget {
  const BookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingAppBar(),
      ],
    );
  }
}