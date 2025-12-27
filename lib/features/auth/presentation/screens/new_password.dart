import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/navigation/app_router.dart';
import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/features/onboarding/presentation/screens/changed_password_screen.dart';
import 'package:finwise/features/onboarding/presentation/widgets/pin_input.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});
  static const routeName = "/new-password";

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
                      40.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("new_password.name"),
                      ),
                      AppTextField(hint: "log_in.password", obscureText: true),
                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("new_password.confirm"),
                      ),
                      AppTextField(
                        hint: "sign_up.c_password",
                        obscureText: true,
                      ),
                      80.verticalSpace,
                      AppButton(
                        text: 'new_password.change_password',
                        onPressed: () =>
                            context.pushReplacement("/changed-password"),
                        width: 400.w,
                        isDiff: false,
                      ),

                      190.verticalSpace,
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
