import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routeName = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
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
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: 200.h,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(80.r)),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(40.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    40.verticalSpace,

                    appTextS3("log_in.username"),
                    10.verticalSpace,
                    AppTextField(hint: "log_in.gmail", obscureText: false),

                    20.verticalSpace,
                    appTextS3("log_in.password"),
                    10.verticalSpace,
                    AppTextField(hint: "log_in.password", obscureText: true),

                    20.verticalSpace,
                    appTextS3("log_in.confirm"),
                    10.verticalSpace,
                    AppTextField(hint: "log_in.confirm", obscureText: true),

                    30.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
