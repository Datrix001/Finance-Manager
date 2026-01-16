import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/features/profile/presentation/widgets/custom_dialog_box.dart';
import 'package:finwise/features/profile/presentation/widgets/custom_icon_button.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static const routeName = "/profileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: appTextS2("profile.title"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => context.pushNamed("/notification"),
            icon: SvgPicture.asset(Assets.svg.iconNotification),
          ),
        ],
      ),
      body: Column(
        children: [
          60.verticalSpace,
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.r),
                      topRight: Radius.circular(50.r),
                    ),
                  ),
                  child: Column(
                    children: [
                      60.verticalSpace,
                      appTextS2("profile.name"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [appTextB2("profile.id")],
                      ),
                      20.verticalSpace,
                      CustomIconButton(
                        icon: SvgPicture.asset(Assets.svg.profile1),
                        title: "profile.edit_profile",
                        onTap: () => context.push("/editProfile"),
                      ),
                      CustomIconButton(
                        icon: SvgPicture.asset(Assets.svg.setting),
                        title: "profile.setting",
                        onTap: () {},
                      ),
                      CustomIconButton(
                        icon: SvgPicture.asset(Assets.svg.help),
                        title: "profile.help",
                        onTap: () {},
                      ),
                      CustomIconButton(
                        icon: SvgPicture.asset(Assets.svg.logout),
                        title: "profile.logout",
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (_) => CustomDialogBox(
                              title: "profile.end",
                              question: "profile.end_question",
                              yes: "profile.yes",
                              no: "profile.cancel",
                              onPressed: () {
                                context.go("/login");
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0.h,
                  top: -50,
                  right: 0,
                  child: Center(
                    child: Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(90.r)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(25.w),
                        child: SvgPicture.asset(Assets.svg.profile1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
