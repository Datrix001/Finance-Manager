import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTransactions extends StatelessWidget {
  final Widget? icons;
  final String type;
  final String categories;
  final int money;
  const CustomTransactions({
    super.key,
    required this.icons,
    required this.type,
    required this.categories,
    required this.money,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Padding(padding: EdgeInsets.all(10.w), child: icons),
        ),
        20.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appTextS4(type),
            appTextB2("18:27 - April 30", color: AppColors.blue),
          ],
        ),
        20.horizontalSpace,
        SizedBox(
          height: 35.h,
          child: VerticalDivider(
            thickness: 2.w,
            width: 1.w,
            color: AppColors.primary,
          ),
        ),
        SizedBox(
          width: 70.w,
          child: appTextB2(categories, textAlign: TextAlign.center),
        ),
        SizedBox(
          height: 35.h,
          child: VerticalDivider(
            thickness: 2.w,
            width: 1.w,
            color: AppColors.primary,
          ),
        ),
        20.horizontalSpace,
        appTextS2("\$${money}", translate: true),
      ],
    );
  }
}
