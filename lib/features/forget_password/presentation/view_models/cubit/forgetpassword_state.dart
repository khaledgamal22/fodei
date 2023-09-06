part of 'forgetpassword_cubit.dart';

@immutable
sealed class ForgetpasswordState {}

final class ForgetpasswordInitial extends ForgetpasswordState {}
final class ForgetpasswordLoading extends ForgetpasswordState {}
final class ForgetpasswordSucces extends ForgetpasswordState {
  final String successMessage;

  ForgetpasswordSucces(this.successMessage);
}
final class ForgetpasswordFailure extends ForgetpasswordState {
  final String errorMessage;

  ForgetpasswordFailure(this.errorMessage);
}

