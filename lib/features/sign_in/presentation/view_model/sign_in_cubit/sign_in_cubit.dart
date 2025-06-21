import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_app/features/sign_in/data/models/sign_in_request_model.dart';
import 'package:patient_app/features/sign_in/data/repository/sign_in_repo.dart';
import 'package:patient_app/features/sign_in/presentation/view_model/sign_in_cubit/sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this._signInRepo) : super(SignInInitial());
  final SignInRepo _signInRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> signIn() async {
    emit(SignInLoading());
    final result = await _signInRepo.signIn(
      signInRequestModel: SignInRequestModel(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      ),
    );

    result.fold(
      (errorModel) => emit(SignInFailure(errorModel: errorModel)),
      (r) => emit(SignInSuccess()),
    );
  }

  @override
  Future<void> close() {
    passwordController.dispose();
    emailController.dispose();
    return super.close();
  }
}
