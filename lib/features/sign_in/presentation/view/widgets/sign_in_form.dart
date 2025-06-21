import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:patient_app/core/helpers/extentions.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_images.dart';
import 'package:patient_app/core/utils/app_styles.dart';
import 'package:patient_app/core/widgets/custom_text_form_field.dart';
import 'package:patient_app/features/sign_in/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:patient_app/generated/l10n.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignInCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<SignInCubit>().emailController,
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Image.asset(
                AppImages.imagesEmail,
                height: 10.h,
              ),
            ),
          ),
          Gap(20.h),
          CustomTextFormField(
            controller: context.read<SignInCubit>().passwordController,
            hintText: S.of(context).password,
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
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: TextButton(
              onPressed: () {
                context.pushNamed(Routing.emailView);
              },
              child: Text(
                S.of(context).forgotPassword,
                style: AppStyles.medium12(context).copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
