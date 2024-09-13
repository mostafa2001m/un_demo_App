import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:un_demo/core/utils/app_colors.dart';
import 'package:un_demo/core/widgets/job_card.dart';
import 'package:un_demo/features/home/presentation/view%20model/home_controller.dart';
import 'package:un_demo/features/home/presentation/widgets/home_header.dart';
import 'package:un_demo/features/job_details/presentation/view/job_details_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController()).getJobsList();
    return Scaffold(
      backgroundColor: AppColor.kBackgroundColor,
      body: GetBuilder<HomeController>(builder: (controller) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                homeHeader(),
                Expanded(
                  child: Skeletonizer(
                    enabled: controller.isLoading,
                    child: RefreshIndicator(
                      onRefresh: () async {
                        controller.getJobsList();
                      },
                      child: ListView.builder(
                        itemCount: controller.filteredJobList.isNotEmpty
                            ? controller.filteredJobList.length
                            : controller.jobList.length,
                        itemBuilder: (ctx, i) {
                          return GestureDetector(
                            onTap: () {
                              Get.to(JobDetailsView(
                                currentJob:
                                    controller.filteredJobList.isNotEmpty
                                        ? controller.filteredJobList[i]
                                        : controller.jobList[i],
                              ));
                            },
                            child: JobCard(
                              currentJob: controller.filteredJobList.isNotEmpty
                                  ? controller.filteredJobList[i]
                                  : controller.jobList[i],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
