import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:patient_app/core/helpers/extentions.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_styles.dart';
import 'package:patient_app/generated/l10n.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            context.pushNamed(Routing.signUp);
          },
        text: S.of(context).doNotHaveAnAccount,
        style: AppStyles.medium16(context).copyWith(
          color: AppColors.black.withValues(alpha: .3),
        ),
        children: [
          TextSpan(
            text: S.of(context).register,
            style: AppStyles.medium16(context).copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routing.signUp);
              },
          ),
        ],
      ),
    );
  }
}
