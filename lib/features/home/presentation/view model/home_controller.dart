import 'package:get/get.dart';
import 'package:un_demo/core/models/job_model.dart';
import 'package:un_demo/core/widgets/custom_toast.dart';
import 'package:un_demo/features/home/data/home_repository.dart';

class HomeController extends GetxController {
  HomeRepository homeRepository = HomeRepository();
  bool isLoading = false;
  List<JobModel> jobList = [];
  List<JobModel> filteredJobList = [];

  getJobsList() async {
    jobList = generateDummyJobList();
    isLoading = true;
    update();
    await homeRepository.getJobsList((customers) {
      jobList = customers;
      isLoading = false;
      update();
    }, (error) => showCustomToaster(error, isError: true));
  }

  filterListByName(String query) {
    filteredJobList = jobList
        .where((element) =>
            element.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
    update();
  }

  List<JobModel> generateDummyJobList() {
    return List<JobModel>.generate(8, (index) {
      return JobModel(
          jobID: 'mostafa',
          location: 'mostafa',
          company: 'mostafa',
          description:
              'Oversee HR operations and manage employee relations. Responsibilities include recruiting, training, and developing staff, as well as handling employee grievances and performance reviews.',
          longDescription: 'mostafa',
          salary: 'mostafa',
          datePosted: 'mostafa',
          title: 'mostafa',
          image: 'https://www.unhcrjo.org/img/jobs/hr_manager.jfif');
    });
  }
}
