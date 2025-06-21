import 'package:flutter/material.dart';
import 'package:patient_app/core/widgets/custom_auth_sliver_app_bar.dart';
import 'package:patient_app/features/forget_password/presentation/view/widgets/otp_body.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAuthSliverAppBar(
            canGoBack: true,
          ),
          SliverToBoxAdapter(
            child: OtpBody(
              email: email,
            ),
          )
        ],
      ),
    );
  }
}
