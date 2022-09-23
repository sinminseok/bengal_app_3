import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get_navigation/src/root/get_material_app.dart";
import 'Controller/back_data_controller.dart';
import 'Controller/storage_controller.dart';
import "common/string_configuration.dart";

import "pages/login/landing_page.dart";

void main() {
  runApp(
      const MainApp()
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    StringConfiguration();
    BackDataManager();
    StorageController();

    return ScreenUtilInit(
      designSize: const Size(390, 810),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return const GetMaterialApp(
          home: LandingPage(),
        );
      },
      child: const LandingPage(),
    );
  }
}
