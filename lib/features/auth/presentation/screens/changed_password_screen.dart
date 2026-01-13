import 'dart:async';

import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChangedPasswordScreen extends StatefulWidget {
  const ChangedPasswordScreen({super.key});
  static const routeName = "/changed-password";

  @override
  State<ChangedPasswordScreen> createState() => _ChangedPasswordScreenState();
}

class _ChangedPasswordScreenState extends State<ChangedPasswordScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () => context.pushReplacement("/login"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.images.success1.path),
            20.verticalSpace,
            SizedBox(
              width: 270.w,
              child: appTextS1(
                "changed_password.success",
                color: AppColors.primary,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
