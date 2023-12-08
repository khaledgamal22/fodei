import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mataam_app/features/home/presentation/view_models/booking_restaurants_cubit/booking_restaurants_cubit.dart';
import 'package:mataam_app/features/home/presentation/views/widgets/restaurant_item.dart';

class BookingRestaurantList extends StatelessWidget {
  const BookingRestaurantList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      builder: (context, state) {
        if(state is BookingRestaurantsSuccess){
          return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: state.restaurantslist.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: RestaurantItem(
                titleButton: 'Book',
                restaurant: state.restaurantslist[index],
              ),
            );
          },
        );
        }
        else if(state is BookingRestaurantsFailure){
          return Text(state.errorMessage);
        }
         else{
          return Center(child: CircularProgressIndicator());
        }
      }, 
    );
  }
}
