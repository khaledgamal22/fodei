abstract class SplashRepo{
  Future<void> userLogin({required String email,required String password});
  Future<void> userRegister({required String fullname,required String email,required String password});
}