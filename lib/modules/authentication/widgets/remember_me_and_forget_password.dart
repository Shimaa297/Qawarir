import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberAndForgetPassowrd extends StatefulWidget {
  const RememberAndForgetPassowrd({super.key});

  @override
  State<RememberAndForgetPassowrd> createState() => _RememberAndForgetPassowrdState();
}

class _RememberAndForgetPassowrdState extends State<RememberAndForgetPassowrd> {
  late bool _isChecked;
  @override
  void initState() {
    super.initState();
    _isChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 34.99.w,
            child: Checkbox(
              activeColor: ColorManager.primary,
              value: _isChecked,
              onChanged: (bool? value) {
                setState(() {
                  _isChecked = value!;
                });
              },
            ),
          ),
          Text(
            AppStrings.rememberMe,
            style: AppStyles.body14Regular,
          ),
          const Spacer(),
          Text(AppStrings.forgetPassword,
              style: AppStyles.body14Regular.copyWith(
                decoration: TextDecoration.underline,
                color: ColorManager.primary,
              ))
        ],
      ),
    );
  }
}
