import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button2.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomDialogBox extends StatelessWidget {
  final String title;
  final String question;
  final String yes;
  final String no;
  final VoidCallback onPressed;
  const CustomDialogBox({
    super.key,
    required this.title,
    required this.question,
    required this.yes,
    required this.no,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.transparent,
      child: Container(
        height: 220.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.r)),
        ),
        child: Column(
          children: [
            20.verticalSpace,
            appTextS1(title),
            10.verticalSpace,
            appTextB1(question),
            30.verticalSpace,
            AppButton2(text: yes, onPressed: onPressed, isDiff: false),
            10.verticalSpace,
            AppButton2(
              text: no,
              onPressed: context.pop,
              isDiff: true,
              width: 150.w,
            ),
          ],
        ),
      ),
    );
  }
}
