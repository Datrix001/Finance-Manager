import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/features/notifications/presentation/widgets/custom_notification.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const routeName = "/notifications";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: appTextH3("notification.name"),
      ),
      body: Expanded(
        child: Container(
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60.r),
              topRight: Radius.circular(60.r),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: appTextB1("notification.today"),
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.bell),
                  title: "notification.reminder",
                  about:
                      "Set up your automatic savings to meet your savings goal...",
                  time: "17:00 - April 24",
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.star),
                  title: "notification.new_update",
                  about:
                      "Set up your automatic savings to meet your savings goal...",
                  time: "17:00 - April 24",
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.dollar),
                  title: "notification.transactions",
                  about: "A new transaction has been registered",
                  time: "17:00 - April 24",
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, left: 30.w),
                  child: appTextB1("notification.yesterday"),
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.bell),
                  title: "notification.reminder",
                  about:
                      "Set up your automatic savings to meet your savings goal...",
                  time: "17:00 - April 24",
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.star),
                  title: "notification.new_update",
                  about:
                      "Set up your automatic savings to meet your savings goal...",
                  time: "17:00 - April 24",
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.dollar),
                  title: "notification.transactions",
                  about: "A new transaction has been registered",
                  time: "17:00 - April 24",
                ),
                CustomNotification(
                  icon: SvgPicture.asset(Assets.svg.bell),
                  title: "notification.reminder",
                  about:
                      "Set up your automatic savings to meet your savings goal...",
                  time: "17:00 - April 24",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
