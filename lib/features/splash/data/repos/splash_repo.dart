import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mataam_app/core/errors/failure.dart';

abstract class SplashRepo {
  Future<Either<Failure,UserCredential>> userLogin({
    required String email,
    required String password,
  });
  Future<Either<Failure,UserCredential>> userRegister(
      {required String fullname,
      required String email,
      required String password});
  Future<Either<Failure,UserCredential>> userSignInWithGoogle();    
}


