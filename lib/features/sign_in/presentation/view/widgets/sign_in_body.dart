
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_styles.dart';
import 'package:patient_app/features/sign_in/presentation/view/widgets/dont_have_account.dart';
import 'package:patient_app/features/sign_in/presentation/view/widgets/sign_in_button_bloc_consumer.dart';
import 'package:patient_app/features/sign_in/presentation/view/widgets/sign_in_form.dart';
import 'package:patient_app/generated/l10n.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.of(context).welcomeBack,
            style: AppStyles.medium30(context)
                .copyWith(color: AppColors.primaryColor),
          ),
          Gap(10.h),
          Text(
            S.of(context).loginToYourAccount,
            style: AppStyles.medium16(context).copyWith(
              color: AppColors.black.withValues(alpha: .3),
            ),
          ),
          Gap(30.h),
          const SignInForm(),
          Gap(40.h),
         const SignInButtonBlocConsumer(),
          Gap(40.h),
         const DontHaveAccount(),
          Gap(20.h),
        ],
      ),
    );
  }
}

