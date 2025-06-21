import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_images.dart';
import 'package:patient_app/core/utils/app_styles.dart';
import 'package:patient_app/core/widgets/custom_button.dart';
import 'package:patient_app/core/widgets/custom_text_form_field.dart';
import 'package:patient_app/generated/l10n.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppImages.imagesResetPassword),
          Text(
            S.of(context).resetPassword,
            style: AppStyles.medium30(context)
                .copyWith(color: AppColors.primaryColor),
          ),
          Gap(10.h),
          Text(
            S.of(context).enterNewPassword,
            textAlign: TextAlign.center,
            style: AppStyles.medium16(context).copyWith(
              color: AppColors.black.withValues(alpha: .3),
            ),
          ),
          Gap(20.h),
          CustomTextFormField(
            hintText: S.of(context).newPassword,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppImages.imagesPassword,
                height: 28.h,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.imagesUnvisable,
                height: 28.h,
              ),
            ),
          ),
          Gap(20.h),
          CustomTextFormField(
            hintText: S.of(context).confirmPassword,
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                AppImages.imagesPassword,
                height: 28.h,
              ),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppImages.imagesUnvisable,
                height: 28.h,
              ),
            ),
          ),
          Gap(20.h),
          CustomButton(onPressed: () {}, text: S.of(context).resetPassword),
        ],
      ),
    );
  }
}
