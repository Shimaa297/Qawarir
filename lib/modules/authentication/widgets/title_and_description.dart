import 'package:evet_task/core/app_style.dart';
import 'package:evet_task/core/resources/assets_manager.dart';
import 'package:evet_task/core/resources/color_manager.dart';
import 'package:evet_task/core/resources/strings_manager.dart';
import 'package:evet_task/core/resources/values_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleAndDescription extends StatelessWidget {
  final String title, description;
  const TitleAndDescription({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 220.h,
          width: 220.w,
          child: SvgPicture.asset(ImagesManager.authIcon),
        ),
        SizedBox(
          height: 69.h,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.headlines24bold,
        ),
        SizedBox(
          height: AppPadding.p16.h,
        ),
        SizedBox(
          width: 220.w,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: AppStyles.title16Regular.copyWith(color: ColorManager.black.withOpacity(.50)),
          ),
        ),
      ],
    );
  }
}
