import 'package:bloc/bloc.dart';
import 'package:mataam_app/features/splash/data/repos/splash_repo.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.splashRepo) : super(RegisterInitial());
  final SplashRepo splashRepo;
  Future<void> registerUser({
    required String fullname,
    required String email,
    required String password,
  }) async {
    emit(RegisterLoading());
    var data = await splashRepo.userRegister(
      fullname: fullname,
      email: email,
      password: password,
    );
    data.fold(
      (failure) {
        emit(
          RegisterFailure(failure.errorMessage),
        );
      },
      (r) {
        emit(
          RegisterSucsees(),
        );
      },
    );
  }
}
