import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNotification extends StatelessWidget {
  final Widget icon;
  final String title;
  final String about;
  final String time;
  const CustomNotification({
    super.key,
    required this.icon,
    required this.title,
    required this.about,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.primary)),
        ),
        child: Row(
          children: [
            Transform.translate(
              offset: Offset(0, -10),
              child: Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(padding: EdgeInsets.all(5.w), child: icon),
              ),
            ),
            15.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  appTextS4(title),
                  SizedBox(width: 260.w, child: appTextB2(about)),
                ],
              ),
            ),
            Align(
              alignment: AlignmentGeometry.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: appTextB2(
                  time,
                  textAlign: TextAlign.end,
                  color: AppColors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
