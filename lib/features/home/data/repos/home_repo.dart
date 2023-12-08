import 'package:dartz/dartz.dart';
import 'package:mataam_app/core/errors/failure.dart';
import 'package:mataam_app/features/home/data/models/restaurant_model/restaurant.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<Restaurant>>> fetechBookingResturant();
}