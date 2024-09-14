import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/utils/Strings.dart';
import 'package:un_demo/core/utils/custom_text_styles.dart';
import 'package:un_demo/core/utils/images.dart';
import 'package:un_demo/core/components/primary_searchfield.dart';

Column homeHeader() {
  return Column(
    children: [
      Row(
        children: <Widget>[
          const CircleAvatar(backgroundImage: AssetImage(Images.userImage)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
            child: CustomTextStyles.jobCardTitleText(AppStrings.kUserName),
          ),
        ],
      ),
      primarySearchField(),
    ],
  );
}
