import 'package:finwise/core/styles/app_text.dart';
import 'package:finwise/core/util/widgets/app_button.dart';
import 'package:finwise/core/util/widgets/app_text_field.dart';
import 'package:finwise/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  static const routeName = "/signup";
  final supabase = Supabase.instance.client;

  final TextEditingController fullname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController c_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 400.h,
              width: double.infinity,
              decoration: BoxDecoration(color: AppColors.primary),
              child: Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: appTextH2("sign_up.create", textAlign: TextAlign.center),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -210),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(80.r),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("sign_up.full_name"),
                      ),
                      AppTextField(
                        hint: "sign_up.f_example",
                        obscureText: false,
                        controller: fullname,
                      ),
                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("sign_up.email"),
                      ),
                      AppTextField(
                        hint: "sign_up.e_example",
                        obscureText: false,
                        controller: email,
                      ),

                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("sign_up.password"),
                      ),
                      AppTextField(
                        hint: "sign_up.password",
                        obscureText: true,
                        controller: password,
                      ),
                      20.verticalSpace,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: appTextS3("sign_up.c_password"),
                      ),
                      AppTextField(
                        hint: "sign_up.c_password",
                        obscureText: true,
                        controller: c_password,
                      ),
                      30.verticalSpace,
                      SizedBox(
                        width: 240.w,
                        child: appTextB2(
                          "sign_up.terms",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      10.verticalSpace,
                      AppButton(
                        text: 'sign_up.sign',
                        onPressed: () => context.pushReplacement("/home"),
                        width: 150.w,
                        isDiff: false,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          appTextB2("sign_up.already"),
                          TextButton(
                            onPressed: () => context.push("/login"),
                            child: appTextB2(
                              "onbarding.log_in",
                              color: AppColors.blue,
                            ),
                          ),
                        ],
                      ),

                      40.verticalSpace,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> signUp() async {
    if (password.text == c_password.text) {
      await supabase.auth.signUp(
        password: password.text,
        email: email.text,
        data: {'fullname': fullname.text},
      );
    } else {
      print("Error password");
    }
  }
}
