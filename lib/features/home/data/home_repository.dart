import 'package:dio/dio.dart';
import 'package:un_demo/core/api/dio_consumer.dart';
import 'package:un_demo/core/api/end_points.dart';
import 'package:un_demo/core/models/job_model.dart';

class HomeRepository {
  DioConsumer dio = DioConsumer(dio: Dio());

  getJobsList(
     Function(List<JobModel> jobs) onSuccess,
    Function(String error) onError,
  )async{
     try {
      final url = EndPoints.baseUrl + EndPoints.jobsEndPoint;
      dynamic response = await dio.get(url);

      if (response is List) {
        final jobs =
            response.map((data) => JobModel.fromJson(data)).toList();
        onSuccess(jobs);
      } else {
        onError(response.toString());
      }
    } catch (e) {
      onError(e.toString());
      print("Error from home Repository: $e");
      rethrow;
    }
  }
  
}