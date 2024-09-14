import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/core/utils/custom_text_styles.dart';

Widget descriptionColumn(
  String title,
  String value,
) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: const Divider(),
        ),
        CustomTextStyles.jobCardTitleText(title,
            color: AppColor.kSecondaryTextColor, size: 24.sp),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 4.h),
          child:
              CustomTextStyles.jobCardDescriptionText('- $value', size: 18.sp),
        ),
      ],
    ),
  );
}
