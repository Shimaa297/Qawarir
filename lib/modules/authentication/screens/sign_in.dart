import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/core/resources/values_manager.dart';
import 'package:evet_task/modules/authentication/widgets/create_one_account.dart';
import 'package:evet_task/modules/authentication/widgets/email_and_password.dart';
import 'package:evet_task/modules/authentication/widgets/title_and_description.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
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
                  title: AppStrings.signIn,
                  description: AppStrings.enterYourInfo,
                ),
                SizedBox(
                  height: AppPadding.p32.h,
                ),
                const EmailAndPasswordTextForm(),
                SizedBox(
                  height: AppPadding.p24.h,
                ),
                const CreateOneAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
