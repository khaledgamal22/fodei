import 'package:mataam_app/features/splash/data/repos/splash_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashRepoimplementation implements SplashRepo {
  @override
  Future<void> userLogin({
    required String email,
    required String password,
  }) async {
    UserCredential user =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> userRegister(
      {required String fullname,
      required String email,
      required String password}) async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
