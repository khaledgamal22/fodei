part of 'booking_restaurants_cubit.dart';

sealed class BookingRestaurantsState extends Equatable {
  const BookingRestaurantsState();

  @override
  List<Object> get props => [];
}

final class BookingRestaurantsInitial extends BookingRestaurantsState {}

final class BookingRestaurantsSuccess extends BookingRestaurantsState {
  final List<Restaurant> restaurantslist;

  const BookingRestaurantsSuccess(this.restaurantslist);
}

final class BookingRestaurantsLoading extends BookingRestaurantsState {}

final class BookingRestaurantsFailure extends BookingRestaurantsState {
  final String errorMessage;

  const BookingRestaurantsFailure(this.errorMessage);
}
