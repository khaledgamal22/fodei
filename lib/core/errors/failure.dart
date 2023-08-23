import 'package:firebase_auth/firebase_auth.dart';

abstract class Failure{
  final String errorMessage;

  Failure(this.errorMessage);
}

class AuthFailure extends Failure{
  AuthFailure(super.errorMessage);

  factory AuthFailure.firebaseAuth(FirebaseAuthException firebaseAuthException){
    if(firebaseAuthException.code== 'user-not-found'){
      return AuthFailure('user not found');
    }
    else if(firebaseAuthException.code=='wrong-password'){
      return AuthFailure('Wrong password');
    }
    else if(firebaseAuthException.code=='weak-password'){
      return AuthFailure('week password');
    }
    else if(firebaseAuthException.code=='email-already-in-use'){
      return AuthFailure('this email already exists');
    }
    else{
      return AuthFailure('something went wrong');
    }
  }
}