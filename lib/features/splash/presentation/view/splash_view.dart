import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient_app/core/helpers/extentions.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/core/utils/app_colors.dart';
import 'package:patient_app/core/utils/app_icons.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () => _getInitRoute(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.white,
              AppColors.gradient1,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Center(
          child: SvgPicture.asset(
            AppIcons.svgsSplash,
          ),
        ),
      ),
    );
  }

  _getInitRoute() async {
    context.pushReplacementNamed(Routing.onboarding);
    // final token = await SecureStorage.instance.getData(key: ApiKeys.token);
    // bool isFirstTime =
    //     getIt<CacheHelper>().getBool(key: CacheKeys.isFirstTime) ?? true;
    // if (mounted) {
    //   if (token != null) {
    //     context.pushReplacementNamed(Routing.mainView);
    //   } else if (!isFirstTime) {
    //     context.pushReplacementNamed(Routing.signIn);
    //   } else {
    //     context.pushReplacementNamed(Routing.onboarding);
    //   }
    // }
  }
}
