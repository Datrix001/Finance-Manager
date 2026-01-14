import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                _navItem(Icons.home, NavItem.home, selected),
                _navItem(Icons.bar_chart, NavItem.analyse, selected),
                _navItem(Icons.swap_horiz, NavItem.transfer, selected),
                _navItem(
                  Icons.account_balance_wallet,
                  NavItem.wallet,
                  selected,
                ),
                _navItem(Icons.person, NavItem.profile, selected),
              ],
            ),
          ),
        );
      },
      valueListenable: notifier,
    );
  }

  Widget _navItem(IconData icon, NavItem item, NavItem selected) {
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
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: isActive ? Colors.white : AppColors.black),
          ),
        ),
      ),
    );
  }
}

enum NavItem { home, analyse, transfer, wallet, profile }
