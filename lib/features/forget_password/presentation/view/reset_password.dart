import 'package:flutter/material.dart';
import 'package:patient_app/core/widgets/custom_auth_sliver_app_bar.dart';
import 'package:patient_app/features/forget_password/presentation/view/widgets/reset_password_body.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAuthSliverAppBar(),
            SliverToBoxAdapter(
              child: ResetPasswordBody(),
            )
          ],
        ),
      ),
    );
  }
}
