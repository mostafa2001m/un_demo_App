import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:un_demo/core/utils/Strings.dart';
import 'package:un_demo/core/components/back_button.dart';
import 'package:un_demo/features/home/data/models/job_model.dart';
import 'package:un_demo/features/job/details/presentation/widgets/data_row.dart';
import 'package:un_demo/features/job/details/presentation/widgets/description_column.dart';
import 'package:un_demo/features/job/details/presentation/widgets/job_details_header.dart';

class JobDetailsView extends StatelessWidget {
  final JobModel currentJob;
  const JobDetailsView({super.key, required this.currentJob});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              backButtonWithTitle(AppStrings.kJobDetailsHeader),
              jobDetailsHeader(currentJob),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 15.h),
                child: const Divider(),
              ),
              dataRow(AppStrings.kJobID, currentJob.jobID),
              dataRow(AppStrings.kJobDate, currentJob.datePosted),
              dataRow(AppStrings.kSalary, currentJob.salary),
              descriptionColumn(AppStrings.kJobDetailsDescription, currentJob.description),
              descriptionColumn(
                  AppStrings.kJobDetailsLongDescription, currentJob.longDescription),
            ],
          ),
        ),
      ),
    );
  }
}
