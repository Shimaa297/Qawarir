import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/resources/assets_manager.dart';
import 'package:evet_task/modules/on_boarding/widgets/data_onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: AppStyles.darkStatusBarIconsWithTransparentColorStyle,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 0,
              child: Image.asset(
                ImagesManager.background,
                height: 584.h,
                width: 360.w,
                fit: BoxFit.cover,
                ),
            ),
            Positioned(top: 58.h, child: Image.asset(ImagesManager.layout)),
            Positioned(
              top: 30.h,
              left: 0,
              right: 0,
              child: const DataOnBoardingWidget(),
            )
          ],
        ),
      ),
    );
  }
}