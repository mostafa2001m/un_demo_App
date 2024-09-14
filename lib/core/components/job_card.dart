import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/core/utils/custom_text_styles.dart';
import 'package:un_demo/features/home/data/models/job_model.dart';

class JobCard extends StatelessWidget {
  final JobModel currentJob;

  const JobCard({
    super.key,
    required this.currentJob,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 5.0),
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                  color: AppColor.kShadowColor,
                  blurRadius: 5.0,
                  offset: const Offset(0, 3))
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Spacer(),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomTextStyles.jobCardTitleText(currentJob.title),
                        CustomTextStyles.jobCardSubTitleText(
                            currentJob.company),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              size: 15,
                              color: AppColor.kSecondaryTextColor,
                            ),
                            CustomTextStyles.jobCardSubTitleText(
                                currentJob.datePosted),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              CustomTextStyles.jobCardDescriptionText(
                currentJob.description,
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            width: 71.w,
            height: 71.h,
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
        ),
      ],
    );
  }
}
