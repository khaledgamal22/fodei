import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mataam_app/core/errors/failure.dart';
import 'package:mataam_app/core/utilits/api_service.dart';
import 'package:mataam_app/features/home/data/models/restaurant_model/restaurant.dart';
import 'package:mataam_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure,List<Restaurant>>> fetechBookingResturant() async {
    ApiService api = ApiService(Dio());
    try {
  var data = await api.get(
    endpoint:
        'https://the-fork-the-spoon.p.rapidapi.com/restaurants/v2/list?queryPlaceValueCityId=348156',
  );
  List<Restaurant> restaurants = [];
  for (Map<String,dynamic> item in data['data']) {
    restaurants.add(Restaurant.fromJson(item));
  }
  return right(restaurants);
} catch (e) {
  if(e is DioException){
    return left(ServerFailre.fromDioError(e));
  }
  return left(ServerFailre('oOps,please try again'));
}
  }
}
