import 'package:flutter/material.dart';
import 'package:patient_app/core/widgets/custom_auth_sliver_app_bar.dart';
import 'package:patient_app/features/sign_in/presentation/view/widgets/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            CustomAuthSliverAppBar(),
            SliverToBoxAdapter(
              child: SignInBody(),
            )
          ],
        ),
      ),
    );
  }
}
