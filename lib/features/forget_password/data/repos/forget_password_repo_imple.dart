import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mataam_app/core/errors/failure.dart';
import 'package:mataam_app/features/forget_password/data/repos/forget_password_repo.dart';

class ForgetPasswordRepoImple implements ForgetPasswordRepo{
  @override
  Future<Either<Failure,String>> resetPassword({required String email}) async{
    try{
     await FirebaseAuth.instance.sendPasswordResetEmail(email: email,);
      return right('link is send to your email,check it');
    }catch(e){
      if(e is FirebaseAuthException){
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('something went wrong'));
    }
  }

}