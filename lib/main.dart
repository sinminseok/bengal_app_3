
import 'package:bengal_app/controller/Inventory_controller/enhance_controller.dart';
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get_navigation/src/root/get_material_app.dart";
import 'package:provider/provider.dart';
import 'controller/CarsNft_controller/carnft_controller.dart';
import 'controller/Frame_controller/frame_controller.dart';
import 'controller/Inventory_controller/mint_controller.dart';
import 'controller/storage_controller.dart';
import "common/string_configuration.dart";
import "pages/login/landing_page.dart";

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Enhance_Controller()),
      ChangeNotifierProvider(create: (contextn) => Mint_Controller(),),
      ChangeNotifierProvider(create: (context) => Frame_Controller()),
      ChangeNotifierProvider(create: (context) => Carnft_Controller())

    ], child: MainApp()),
  );

  // runApp(
  //     const MainApp()
  // );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    StringConfiguration();
    StorageController();

    return ScreenUtilInit(
      designSize: const Size(390, 789),
      minTextAdapt: false,
      splitScreenMode: false,
      builder: (context, child) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: LandingPage(),
        );
      },
      child: const LandingPage(),
    );
  }
}
