import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/navigation_manager.dart';
import 'package:evet_task/core/resources/assets_manager.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/modules/on_boarding/screens/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controllerA;

  @override
  void initState() {
    super.initState();
    _controllerA = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controllerA,
      curve: Curves.bounceOut,
    );
    goToNextView();
  }

  void goToNextView() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      _controllerA.forward();
    });
    Future.delayed(const Duration(milliseconds: 3300), () async {
      pushPage(context, const OnBoardingScreen());
    });
  }

  @override
  void dispose() {
    _controllerA.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: AppStyles.lightStatusBarIconsWithTransparentColorStyle,
      child: Scaffold(
        backgroundColor: ColorManager.primary,
        body: Center(
          child: ScaleTransition(
            scale: _animation,
            child: SvgPicture.asset(
              ImagesManager.logo,
              height: 141.78.h,
              width: 165.38.w,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
