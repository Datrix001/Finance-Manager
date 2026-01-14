import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTap;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, bottom: 20.h),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 50.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: AppColors.blue.withGreen(98),
                borderRadius: BorderRadius.all(Radius.circular(20.r)),
              ),
              child: Padding(padding: EdgeInsets.all(10.h), child: icon),
            ),
            20.horizontalSpace,
            appTextS3(title),
          ],
        ),
      ),
    );
  }
}
