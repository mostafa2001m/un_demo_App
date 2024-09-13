import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/core/utils/custom_text_styles.dart';

Padding dataRow(
  String title,
  String value,
) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
    child: Row(
      children: [
        CustomTextStyles.jobCardTitleText(title,
            color: AppColor.kSecondaryTextColor),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: CustomTextStyles.jobCardTitleText(value,
                size: 15.sp, textAlign: TextAlign.start),
          ),
        ),
      ],
    ),
  );
}
