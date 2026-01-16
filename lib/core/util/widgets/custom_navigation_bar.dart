import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatelessWidget {
  final ValueNotifier<NavItem> notifier;
  const CustomNavigationBar({super.key, required this.notifier});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<NavItem>(
      builder: (context, selected, _) {
        return Container(
          width: double.maxFinite,
          height: 80.h,

          decoration: BoxDecoration(
            color: AppColors.lightGreen,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50.r),
              topRight: Radius.circular(50.r),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Row(
              children: [
                _navItem(
                  SvgPicture.asset(Assets.svg.home, width: 10.h, height: 10.h),
                  NavItem.home,
                  selected,
                ),
                _navItem(
                  SvgPicture.asset(
                    Assets.svg.analyse,
                    width: 10.h,
                    height: 10.h,
                  ),
                  NavItem.analyse,
                  selected,
                ),
                _navItem(
                  SvgPicture.asset(
                    Assets.svg.transactions,
                    width: 10.h,
                    height: 10.h,
                  ),
                  NavItem.transfer,
                  selected,
                ),
                _navItem(
                  SvgPicture.asset(
                    Assets.svg.wallet,
                    width: 10.h,
                    height: 10.h,
                  ),
                  NavItem.wallet,
                  selected,
                ),
                _navItem(
                  SvgPicture.asset(
                    Assets.svg.profile,
                    width: 10.h,
                    height: 10.h,
                  ),
                  NavItem.profile,
                  selected,
                ),
              ],
            ),
          ),
        );
      },
      valueListenable: notifier,
    );
  }

  Widget _navItem(Widget icon, NavItem item, NavItem selected) {
    final bool isActive = item == selected;

    return Expanded(
      child: GestureDetector(
        onTap: () => notifier.value = item,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 44.h,
            width: 44.w,
            decoration: BoxDecoration(
              color: isActive ? AppColors.primary : Colors.transparent,
              borderRadius: BorderRadius.circular(14.r),
              shape: BoxShape.rectangle,
            ),
            // child: Icon(icon, color: isActive ? Colors.white : AppColors.black),
            child: Padding(padding: EdgeInsets.all(9), child: icon),
          ),
        ),
      ),
    );
  }
}

enum NavItem { home, analyse, transfer, wallet, profile }
