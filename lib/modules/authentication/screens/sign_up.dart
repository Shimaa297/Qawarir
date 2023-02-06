import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/core/resources/values_manager.dart';
import 'package:evet_task/modules/authentication/widgets/email_and_password.dart';
import 'package:evet_task/modules/authentication/widgets/title_and_description.dart';
import 'package:evet_task/modules/authentication/widgets/user_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: AppStyles.darkStatusBarIconsWithTransparentColorStyle,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(24.w, 48.h, 24.w, 44.h),
            child: Column(
              children: <Widget>[
                const TitleAndDescription(
                  title: AppStrings.signUp,
                  description: AppStrings.enterYourInfoToCreateAccount,
                ),
                SizedBox(
                  height: AppPadding.p32.h,
                ),
                const EmailAndPasswordTextForm(signUp: true,),
                SizedBox(
                  height: AppPadding.p24.h,
                ),
                const HaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
