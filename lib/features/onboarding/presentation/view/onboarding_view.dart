import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:patient_app/core/database/cache/cache_keys.dart';
import 'package:patient_app/core/database/cache/cashe_helper.dart';
import 'package:patient_app/core/global_cubits/change_language_cubit/change_language_cubit.dart';
import 'package:patient_app/core/helpers/extentions.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/core/services/get_it.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_images.dart';
import 'package:patient_app/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient_app/generated/l10n.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  Future<void> cacheOnboarding(BuildContext context) async {
    await getIt<CacheHelper>()
        .saveData(key: CacheKeys.isFirstTime, value: false);
    if (context.mounted) {
      context.pushReplacementNamed(Routing.signIn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(),
            const Spacer(),
            AspectRatio(
              aspectRatio: 333 / 249,
              child: Image.asset(AppImages.imagesOnboarding),
            ),
            Gap(15.h),
            Text(
              S.of(context).onboarding,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const Spacer(),
            CustomButton(
              onPressed: () async {
                await ChangeLanguageCubit.get(context)
                    .changeLanguage(language: 'ar');
                if (context.mounted) {
                  await cacheOnboarding(context);
                }
              },
              text: 'أكمل باللغة العربية',
              backgroundColor: AppColors.secondaryColor,
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomButton(
              onPressed: () async {
                await ChangeLanguageCubit.get(context)
                    .changeLanguage(language: 'en');
                if (context.mounted) {
                  await cacheOnboarding(context);
                }
              },
              text: 'Continue in English',
            ),
            SizedBox(
              height: 50.h,
            )
          ],
        ),
      ),
    );
  }
}
