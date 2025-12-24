import 'package:easy_localization/easy_localization.dart';
import 'package:finwise/core/styles/app_text_style.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final VoidCallback? onTap;
  const AppTextField({
    super.key,
    required this.hint,
    this.controller,
    required this.obscureText,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        onTap: onTap,
        style: AppTextStyles.s3,
        decoration: InputDecoration(
          hintText: hint.tr(),
          hintStyle: AppTextStyles.b2.copyWith(
            color: AppColors.black.withAlpha(120),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: AppColors.lightGreen,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            vertical: 16.h,
            horizontal: 16.w,
          ),

          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(16.r),
          //   borderSide: BorderSide(color: AppColors.black.withAlpha(30)),
          // ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: AppColors.white.withAlpha(30)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            // borderSide: BorderSide(color: AppColors.primary, width: 2),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
