import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/features/home/presentation/widgets/custom_progress_bar.dart';
import 'package:finwise/features/home/presentation/widgets/custom_transactions.dart';
import 'package:finwise/gen/assets.gen.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appTextH3("home.welcome"),
            appTextB1("home.greetings.morning"),
          ],
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => context.pushNamed("/notification"),
            icon: SvgPicture.asset(Assets.svg.iconNotification),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(42.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.svg.income),
                            5.horizontalSpace,
                            appTextB1("home.balance"),
                          ],
                        ),
                        appTextS2(
                          "\$${formatMoney(7783)}",
                          translate: true,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: SizedBox(
                        height: 40.h,
                        child: VerticalDivider(
                          thickness: 1.w,
                          color: AppColors.white,
                          width: 1.w,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.svg.expense),
                            5.horizontalSpace,
                            appTextB1("home.expense"),
                          ],
                        ),
                        appTextS2(
                          "-\$${formatMoney(1783)}",
                          translate: true,
                          color: AppColors.red,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 20.h,
                    bottom: 10.h,
                    right: 30.h,
                  ),
                  child: CustomProgressBar(percentage: 0.3),
                ),
                Row(
                  children: [
                    SvgPicture.asset(Assets.svg.check),
                    5.horizontalSpace,
                    appTextB1("home.comment"),
                  ],
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.r),
                  topRight: Radius.circular(60.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 20.h),
                        child: Container(
                          height: 150.h,
                          width: 320.w,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                          child: Row(children: [Column()]),
                        ),
                      ),
                      appTextS2("Transactions"),
                      20.verticalSpace,
                      CustomTransactions(
                        icons: SvgPicture.asset(Assets.svg.money),
                        type: 'Cash',
                        // categories: 'Cash',
                        money: 200,
                        isExpense: false,
                      ),
                      20.verticalSpace,
                      CustomTransactions(
                        icons: SvgPicture.asset(Assets.svg.food),
                        type: 'Ganpat',
                        // categories: 'Food',
                        money: 3000,
                        isExpense: true,
                      ),
                      20.verticalSpace,

                      CustomTransactions(
                        icons: SvgPicture.asset(Assets.svg.grocery),
                        type: 'Instamart',
                        // categories: 'Pantry',
                        money: 488,
                        isExpense: true,
                      ),
                      20.verticalSpace,

                      CustomTransactions(
                        icons: SvgPicture.asset(Assets.svg.grocery),
                        type: 'Blinkit',
                        // categories: 'Pantry',
                        money: 123,
                        isExpense: false,
                      ),
                      20.verticalSpace,

                      CustomTransactions(
                        icons: SvgPicture.asset(Assets.svg.grocery),
                        type: 'Blinkit',
                        // categories: 'Pantry',
                        isExpense: true,
                        money: 757,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
