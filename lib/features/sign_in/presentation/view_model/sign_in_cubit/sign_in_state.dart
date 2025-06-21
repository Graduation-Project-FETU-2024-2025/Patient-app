
import 'package:patient_app/core/database/api/api_error_model.dart';

sealed class SignInState {}

final class SignInInitial extends SignInState {}

final class SignInLoading extends SignInState {}
final class SignInSuccess extends SignInState {


}

final class SignInFailure extends SignInState {
  final ApiErrorModel errorModel;

  SignInFailure({required this.errorModel});
}
