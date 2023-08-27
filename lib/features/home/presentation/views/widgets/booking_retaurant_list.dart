import 'package:flutter/material.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/restaurant_item.dart';

class BookingRestaurantList extends StatelessWidget {
  const BookingRestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 8),
          child: RestaurantItem(),
        );
      },
    );
  }
}