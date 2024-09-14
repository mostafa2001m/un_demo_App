import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:un_demo/core/utils/Strings.dart';
import 'package:un_demo/features/home/presentation/view/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844), 
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.kAppTitle,
        home: HomeView(),
      ),
    );
  }
}
