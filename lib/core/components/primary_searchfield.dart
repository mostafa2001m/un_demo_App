import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:un_demo/core/utils/Strings.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/features/home/presentation/view%20model/home_controller.dart';

Padding primarySearchField() {
  return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: TextField(
        onChanged: Get.find<HomeController>().filterListByName,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          hintText: AppStrings.kSearchFieldHint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none),
          fillColor: AppColor.ktextFieldColor,
          filled: true,
        ),
      ),
    );
}
