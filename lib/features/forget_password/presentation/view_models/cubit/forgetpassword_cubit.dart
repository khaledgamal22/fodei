
import 'package:bloc/bloc.dart';
import 'package:mataam_app/features/forget_password/data/repos/forget_password_repo.dart';
import 'package:meta/meta.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit(this.forgetPasswordRepo) : super(ForgetpasswordInitial());
  final ForgetPasswordRepo forgetPasswordRepo;
  Future<void> forgetPassReset({required String email}) async {
    emit(ForgetpasswordLoading());
    var data = await forgetPasswordRepo.resetPassword(email: email);
    data.fold((failure) {
      emit(
        ForgetpasswordFailure(failure.errorMessage),
      );
    }, (r) {
      emit(
        ForgetpasswordSucces(r),
      );
    });
  }
}
