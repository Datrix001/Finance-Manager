import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/navigation/app_router.dart';
import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/features/onboarding/presentation/widgets/pin_input.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});
  static const routeName = "/otp";

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
                child: appTextH2(
                  "otp.security_pin",
                  textAlign: TextAlign.center,
                ),
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
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
                        child: appTextS1("otp.enter_pin"),
                      ),
                      // PinTheme(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: PinInput(),
                      ),

                      AppButton(
                        text: 'otp.accept',
                        onPressed: () =>
                            context.pushReplacement("/new-password"),
                        width: 150.w,
                        isDiff: false,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 80.h),
                        child: AppButton(
                          text: "otp.send_again",
                          onPressed: () {},
                          width: 160.w,
                          isDiff: true,
                        ),
                      ),
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
