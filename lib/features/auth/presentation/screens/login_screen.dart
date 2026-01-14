import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.primary),
              child: Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: appTextH2("log_in.welcome", textAlign: TextAlign.center),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -210),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(80.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      40.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("log_in.username"),
                      ),
                      AppTextField(hint: "log_in.gmail", obscureText: false),

                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("log_in.password"),
                      ),
                      AppTextField(hint: "log_in.password", obscureText: true),
                      80.verticalSpace,
                      AppButton(
                        text: 'onbarding.log_in',
                        onPressed: () => context.go("/homeScreen"),
                        width: 150.w,
                        isDiff: false,
                      ),
                      TextButton(
                        onPressed: () => context.push("/forgot"),
                        style: TextButton.styleFrom(
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: appTextB2(
                          'onbarding.forgot_password',
                          color: AppColors.secondary,
                        ),
                      ),
                      AppButton(
                        text: "onbarding.sign_up",
                        onPressed: () => context.push("/signup"),
                        width: 150.w,
                        isDiff: true,
                      ),
                      20.verticalSpace,
                      appTextB2("log_in.or_sign_up"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              Assets.images.google.path,
                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              Assets.images.facebook.path,
                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                        ],
                      ),
                      40.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
