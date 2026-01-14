import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final bool isDiff;
  const AppButton2({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    required this.isDiff,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0.h,
          backgroundColor: isDiff
              ? AppColors.lightGreen.withAlpha(90)
              : AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20.r),
          ),
        ),
        child: appTextB1(
          text,
          color: AppColors.secondary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
