import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mataam_app/features/splash/data/repos/splash_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.splashRepo) : super(LoginInitial());

  final SplashRepo splashRepo;

  Future<void> loginUser(
      {required String email, required String password}) async {
    emit(LoginLoading());
    var data = await splashRepo.userLogin(email: email, password: password);
    data.fold(
      (failure) {
        emit(LoginFailure(failure.errorMessage));
      },
      (user) {
        emit(LoginSuccess());
      },
    );
  }
}
