import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/navigation/app_router.dart';
import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});
  static const routeName = "/forgot";

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
                child: appTextH2("forgot.name", textAlign: TextAlign.center),
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
                  padding: EdgeInsets.all(40.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: appTextS1("forgot.reset"),
                        ),
                      ),
                      appTextB2("forgot.about"),
                      30.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("forgot.email"),
                      ),
                      AppTextField(
                        hint: "forgot.e_example",
                        obscureText: false,
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20.h, bottom: 80.h),
                        child: AppButton(
                          text: 'forgot.next_step',
                          onPressed: () => context.push("/otp"),
                          width: 150.w,
                          isDiff: false,
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
