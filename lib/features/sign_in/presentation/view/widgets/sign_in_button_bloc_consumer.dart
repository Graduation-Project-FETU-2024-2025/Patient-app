

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_app/core/helpers/extentions.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/core/widgets/custom_button.dart';
import 'package:patient_app/core/widgets/custom_loading_widget.dart';
import 'package:patient_app/core/widgets/toast.dart';
import 'package:patient_app/features/sign_in/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:patient_app/features/sign_in/presentation/view_model/sign_in_cubit/sign_in_state.dart';
import 'package:patient_app/generated/l10n.dart';

class SignInButtonBlocConsumer extends StatelessWidget {
  const SignInButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          current is SignInSuccess ||
          current is SignInFailure ||
          current is SignInLoading,
      buildWhen: (previous, current) =>
          current is SignInSuccess ||
          current is SignInFailure ||
          current is SignInLoading,
      listener: (context, state) {
        if (state is SignInSuccess) {
          context.pushReplacementNamed(Routing.main);
        } else if (state is SignInFailure) {
          errorToast(message: state.errorModel.message ?? 'An error occurred');
        }
      },
      builder: (context, state) {
        return state is SignInLoading
            ? const CustomLoadingWidget()
            : CustomButton(
                onPressed: () {
                  if (context
                      .read<SignInCubit>()
                      .formKey
                      .currentState!
                      .validate()) {
                    context.read<SignInCubit>().signIn();
                  }
                },
                text: S.of(context).login,
              );
      },
    );
  }
}
