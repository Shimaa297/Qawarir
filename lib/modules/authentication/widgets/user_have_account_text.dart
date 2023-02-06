import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/navigation_manager.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/modules/authentication/screens/sign_in.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context, const SignInScreen());
      },
      behavior: HitTestBehavior.opaque,
      child: RichText(
        text: TextSpan(
          text: AppStrings.doYouHaveAnAccount,
          style: AppStyles.title16Regular,
          children: <TextSpan>[
            TextSpan(
              text: AppStrings.signIn,
              style: AppStyles.title16Regular.copyWith(
                decoration: TextDecoration.underline,
                color: ColorManager.primary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
