import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mataam_app/core/errors/failure.dart';
import 'package:mataam_app/features/splash/data/repos/splash_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashRepoimplementation implements SplashRepo {
  @override
  Future<Either<Failure, UserCredential>> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(user);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> userRegister({
    required String fullname,
    required String email,
    required String password,
  }) async {
    try {
      UserCredential user =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(user);
    } catch (e) {
      if (e is FirebaseAuthException) {
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }

  @override
  Future<Either<Failure, UserCredential>> userSignInWithGoogle() async {
    try {
      GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
      OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential user =
          await FirebaseAuth.instance.signInWithCredential(credential);
      return right(user);
    } catch (e) {
      if(e is FirebaseAuthException){
        return left(AuthFailure.firebaseAuth(e));
      }
      return left(AuthFailure('somthing went wrong'));
    }
  }
}
