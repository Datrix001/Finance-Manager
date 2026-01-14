import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button2.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});
  static const routeName = "/editProfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: appTextS2("edit_profile.title"),
        centerTitle: true,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      60.verticalSpace,
                      Center(child: appTextS2("edit_profile.name")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [appTextB2("edit_profile.id")],
                      ),
                      20.verticalSpace,
                      Padding(
                        padding: EdgeInsets.only(left: 42.w, right: 42.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appTextS2("edit_profile.account_setting"),
                            20.verticalSpace,
                            appTextB1("edit_profile.username"),
                            AppTextField(
                              hint: "edit_profile.name",
                              obscureText: false,
                            ),
                            10.verticalSpace,
                            appTextB1("edit_profile.phone"),
                            AppTextField(
                              hint: "edit_profile.phone_example",
                              obscureText: false,
                            ),
                            10.verticalSpace,

                            appTextB1("edit_profile.email"),
                            AppTextField(
                              hint: "edit_profile.email_example",
                              obscureText: false,
                            ),
                            40.verticalSpace,
                            Center(
                              child: AppButton2(
                                text: "edit_profile.update_profile",
                                onPressed: () {},
                                isDiff: false,
                              ),
                            ),
                          ],
                        ),
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
                        padding: EdgeInsets.all(20.w),
                        child: SvgPicture.asset(Assets.svg.profile),
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
