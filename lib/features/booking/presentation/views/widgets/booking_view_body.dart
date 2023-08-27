import 'package:flutter/material.dart';
import 'package:mataam_app/features/booking/presentation/views/widgets/custom_booking_appBar.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/restaurant_item.dart';

class BookingViewBody extends StatelessWidget {
  const BookingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingAppBar(),
        SizedBox(height: 15,),
        Expanded(
          child: BookingViewList(),
        ),
      ],
    );
  }
}

class BookingViewList extends StatelessWidget {
  const BookingViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 8,),
          child: RestaurantItem(),
        );
      }),
    );
  }
}
