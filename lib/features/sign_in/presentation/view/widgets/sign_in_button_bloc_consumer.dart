import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient_app/core/widgets/custom_button.dart';
import 'package:patient_app/features/sign_in/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:patient_app/generated/l10n.dart';

class SignInButtonBlocConsumer extends StatelessWidget {
  const SignInButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onPressed: () {
          if (context.read<SignInCubit>().formKey.currentState!.validate()) {
            log('Validation successful');
          }
        },
        text: S.of(context).login);
  }
}
