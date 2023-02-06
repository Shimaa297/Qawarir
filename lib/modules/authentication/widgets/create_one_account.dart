import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/navigation_manager.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/modules/authentication/screens/sign_up.dart';
import 'package:flutter/material.dart';

class CreateOneAccount extends StatelessWidget {
  const CreateOneAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushPage(context, const SignUpScreen());
      },
      behavior: HitTestBehavior.opaque,
      child: RichText(
        text: TextSpan(
          text: AppStrings.dontHaveAccount,
          style: AppStyles.title16Regular,
          children: <TextSpan>[
            TextSpan(
              text: AppStrings.createOne,
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
