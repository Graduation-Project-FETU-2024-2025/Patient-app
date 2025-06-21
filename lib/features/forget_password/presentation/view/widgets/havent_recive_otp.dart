import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_styles.dart';
import 'package:patient_app/generated/l10n.dart';

class HaventReciveOTP extends StatelessWidget {
  const HaventReciveOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            
          },
        text: S.of(context).dontReceiveOTP,
        style: AppStyles.medium16(context).copyWith(
          color: AppColors.black.withValues(alpha: .3),
        ),
        children: [
          TextSpan(
            text: S.of(context).resendOTP,
            style: AppStyles.medium16(context).copyWith(
              color: AppColors.primaryColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                
              },
          ),
        ],
      ),
    );
  }
}