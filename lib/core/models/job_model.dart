class JobModel {
  final String jobID;
  final String location;
  final String company;
  final String description;
  final String longDescription;
  final String salary;
  final String datePosted;
  final String title;
  final String image;

  JobModel({
    required this.jobID,
    required this.location,
    required this.company,
    required this.description,
    required this.longDescription,
    required this.salary,
    required this.datePosted,
    required this.title,
    required this.image,
  });

  // Factory constructor to create an instance from JSON
  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      jobID: json['job_id'] ?? '',
      location: json['location'] ?? '',
      company: json['company'] ?? '',
      description: json['description'] ?? '',
      longDescription: json['long_description'] ?? '',
      salary: json['salary'] ?? '',
      datePosted: json['date_posted'] ?? '',
      title: json['title'] ?? '',
      image: json['image_url'] ?? '',
    );
  }


}
