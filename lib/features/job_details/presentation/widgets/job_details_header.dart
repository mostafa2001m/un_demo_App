import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/models/job_model.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/core/utils/custom_text_styles.dart';

Padding jobDetailsHeader(JobModel currentJob) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 12.w),
    child: Row(
      children: [
        Container(
          width: 120.w,
          height: 120.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            image: DecorationImage(
              image: NetworkImage(currentJob.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextStyles.jobCardTitleText(currentJob.title,
                    textAlign: TextAlign.start, size: 20.sp),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.business_center_outlined,
                      color: AppColor.kSecondaryTextColor,
                    ),
                    Expanded(
                      child: CustomTextStyles.jobCardSubTitleText(
                          currentJob.company,
                          size: 16),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: AppColor.kSecondaryTextColor,
                    ),
                    CustomTextStyles.jobCardSubTitleText(currentJob.location,
                        size: 16),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
