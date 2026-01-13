import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProgressBar extends StatelessWidget {
  final double percentage;

  const CustomProgressBar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final barWidth = constraints.maxWidth;
        final safe = percentage.clamp(0.0, 1.0);
        final fillWidth = barWidth * safe;

        return Stack(
          children: [
            Container(
              height: 25.h,
              width: barWidth,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),

            Container(
              height: 25.h,
              width: fillWidth,
              decoration: BoxDecoration(
                color: AppColors.secondary.withGreen(85),
                borderRadius: BorderRadius.circular(100.r),
              ),
            ),

            Positioned.fill(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    appTextB2(
                      "${(safe * 100).toInt()}%",
                      color: AppColors.white,
                      translate: false,
                    ),
                    const Spacer(),
                    appTextB2(
                      "\$${formatMoney(20000)}",
                      color: AppColors.black,
                      translate: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
