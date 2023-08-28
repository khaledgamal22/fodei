import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/restaurant_item.dart';

class BookingViewList extends StatelessWidget {
  const BookingViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 3,
      itemBuilder: ((context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 8,),
          child: RestaurantItem(titleButton: 'Check',),
        );
      }),
    );
  }
}