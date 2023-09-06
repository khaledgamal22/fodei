import 'package:dartz/dartz.dart';
import 'package:mataam_app/core/errors/failure.dart';

abstract class ForgetPasswordRepo{
  Future<Either<Failure, String>> resetPassword({
    required String email,
  });
}