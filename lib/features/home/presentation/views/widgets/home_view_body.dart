import 'package:flutter/material.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/booking_restaurant_section.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/new_arivable_section.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/upper_body_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              UpperBodySection(),
              NewArivableSection(),
            ],
          ),
          ),
          SliverToBoxAdapter(
            child: BookingRestaurantSection(),
          )
        ],
      ),
    );
  }
}
