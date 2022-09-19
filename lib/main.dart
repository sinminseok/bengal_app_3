import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:get/get_navigation/src/root/get_material_app.dart";
import 'package:provider/provider.dart';
import 'common/back_data/back_data_manager.dart';
import "common/string_configuration.dart";
import 'models/test_viewmodel.dart';
import "pages/login/landing_page.dart";

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => Http_services()),

    ], child: MainApp()),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    StringConfiguration();
    BackDataManager();

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context , child) {
        return const GetMaterialApp(
            home: LandingPage(),
        );
        // return MaterialApp(
        //   debugShowCheckedModeBanner: false,
        //   // theme: ThemeData(
        //   //   primarySwatch: Colors.blue,
        //   //   textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
        //   // ),
        //   home: child,
        // );
      },
      child: const LandingPage(),
    );

    // return ScreenUtilInit(
    //   builder: () => MaterialApp(
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: LandingPage(),
    //   ),
    //   designSize: const Size(390, 844),
    // );
    // // var account = BackDataManager().getAccount(1);
    // // debugPrint('account=$account');
    // // return const GetMaterialApp(
    // //   home: LandingPage(),
    // // );
  }
}
