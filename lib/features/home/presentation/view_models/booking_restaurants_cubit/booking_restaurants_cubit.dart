import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:mataam_app/features/home/data/models/restaurant_model/restaurant.dart';
import 'package:mataam_app/features/home/data/repos/home_repo.dart';

part 'booking_restaurants_state.dart';

class BookingRestaurantsCubit extends Cubit<BookingRestaurantsState> {
  BookingRestaurantsCubit(
    this.homeRepo,
  ) : super(BookingRestaurantsInitial());

  HomeRepo homeRepo;

  Future<void> fetechBookingResturant() async {
    emit(BookingRestaurantsLoading());
    var data = await homeRepo.fetechBookingResturant();
    data.fold((failure) {
      emit(BookingRestaurantsFailure(failure.errorMessage));
    }, (resturants) {
      emit(BookingRestaurantsSuccess(resturants));
    });
  }
}
