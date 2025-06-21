import 'package:flutter/material.dart';
import 'package:patient_app/core/widgets/custom_auth_sliver_app_bar.dart';
import 'package:patient_app/features/forget_password/presentation/view/widgets/send_email_body.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAuthSliverAppBar(
            canGoBack: true,
          ),
          SliverToBoxAdapter(
            child: SendEmailBody(),
          )
        ],
      ),
    ));
  }
}
