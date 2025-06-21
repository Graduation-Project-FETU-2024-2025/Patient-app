import 'package:dartz/dartz.dart';
import 'package:patient_app/core/database/api/api_error_model.dart';
import 'package:patient_app/features/sign_in/data/models/sign_in_request_model.dart';

abstract class SignInRepo {
  Future<Either<ApiErrorModel, void>> signIn(
      {required SignInRequestModel signInRequestModel});
}
