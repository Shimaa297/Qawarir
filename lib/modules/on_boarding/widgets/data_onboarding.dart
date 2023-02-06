import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/navigation_manager.dart';
import 'package:evet_task/core/resources/app_indecator.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/components/buttons.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/core/resources/values_manager.dart';
import 'package:evet_task/modules/authentication/screens/sign_in.dart';
import 'package:evet_task/modules/on_boarding/data/models/on_borading_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataOnBoardingWidget extends StatefulWidget {
  const DataOnBoardingWidget({super.key});

  @override
  State<DataOnBoardingWidget> createState() => _DataOnBoardingWidgetState();
}

class _DataOnBoardingWidgetState extends State<DataOnBoardingWidget> {
  late List<BoardingModel> onBoardingModel;
  late int currentIndex;
  @override
  void initState() {
    super.initState();
    onBoardingModel = BoardingModel.listOnBoarding;
    currentIndex = 0;
  }

  void _increaseIndex() {
    setState(() {
      if (currentIndex != onBoardingModel.length - 1) {
        currentIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 68.w),
          child: SizedBox(
              height: 166.h,
              width: 208.w,
              child: Image.asset(
                onBoardingModel[currentIndex].image,
              )),
        ),
        SizedBox(
          height: 216.h,
        ),
        Text(
          onBoardingModel[currentIndex].title,
          textAlign: TextAlign.center,
          style: AppStyles.headlines24bold.copyWith(color: ColorManager.white),
        ),
        SizedBox(
          height: AppPadding.p24.h,
        ),
        SizedBox(
          width: 279.w,
          child: Text(
            onBoardingModel[currentIndex].body,
            textAlign: TextAlign.center,
            style: AppStyles.title16Regular.copyWith(color: ColorManager.white),
          ),
        ),
        SizedBox(
          height: 58.h,
        ),
        AppIndicator(
          length: onBoardingModel.length,
          currentIndex: currentIndex,
          selectedWidth: 40.w,
          innerPadding: 8.w,
          unselectedColor: ColorManager.white.withOpacity(.25),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(AppPadding.p24.w, 98.h, AppPadding.p24.w, 84.h),
          child: currentIndex != onBoardingModel.length - 1
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ButtonsShared(
                      onPressed: () {},
                      text: AppStrings.skip,
                      colorButton: Colors.transparent,
                      colorText: ColorManager.white,
                    ),
                    ButtonsShared(
                      onPressed: _increaseIndex,
                      text: AppStrings.next,
                    )
                  ],
                )
              : ButtonsShared(
                  onPressed: () {
                    pushPage(context, const SignInScreen());
                  },
                  text: AppStrings.done,
                  width: 248.w,
                ),
        ),
      ],
    );
  }
}
