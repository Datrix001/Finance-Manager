import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});
  static const routeName = "/Onboarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.svg.vector),

            appTextH1("app_name", color: AppColors.primary),
            10.verticalSpace,
            appTextB1(
              "onbarding.about",
              color: AppColors.black.withAlpha(80),
              textAlign: TextAlign.center,
            ),
            40.verticalSpace,
            AppButton(
              text: "onbarding.log_in",
              onPressed: () => context.push("/login"),
              width: 180.w,
              isDiff: false,
            ),
            TextButton(
              onPressed: () => context.push("/signup"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
              ),
              child: appTextS2('onbarding.sign_up', color: AppColors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
