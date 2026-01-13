import 'package:finwise/core/styles/app_text_style.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class PinInput extends StatelessWidget {
  PinInput({super.key});

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: AppTextStyles.s2,

    decoration: BoxDecoration(
      border: Border.all(color: AppColors.primary, width: 2.w),
      borderRadius: BorderRadius.circular(20),
    ),
  );
  final focusedPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: AppTextStyles.s2,

    decoration: BoxDecoration(
      border: Border.all(color: AppColors.secondary, width: 2.w),
      borderRadius: BorderRadius.circular(20),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
    );
  }
}
