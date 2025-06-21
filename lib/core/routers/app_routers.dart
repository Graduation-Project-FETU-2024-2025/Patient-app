import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_app/core/routers/routing.dart';
import 'package:patient_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:patient_app/features/sign_in/presentation/view/sign_in_view.dart';
import 'package:patient_app/features/splash/presentation/view/splash_view.dart';

class AppRouters {
  Route generateRoute(RouteSettings settings) {
    var argument = settings.arguments;
    switch (settings.name) {
      case Routing.splash:
        return _buildRoute(
          const SplashView(),
        );
      case Routing.onboarding:
        return _buildRoute(
          const OnboardingView(),
        );
        case Routing.signIn:
        return _buildRoute(
          const SignInView(),
        );
      default:
        return _buildRoute(
          Scaffold(
            body: Center(child: Text('Page not found: ${settings.name}')),
          ),
        );
    }
  }

  Route<dynamic> _buildRoute(Widget page) {
    return Platform.isIOS
        ? CupertinoPageRoute(
            builder: (_) => page,
          )
        : MaterialPageRoute(builder: (_) => page);
  }
}
