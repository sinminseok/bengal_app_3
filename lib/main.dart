import "package:bengal_app/utils/relative_coordinate.dart";
import "package:flutter/material.dart";
import "package:get/get_navigation/src/root/get_material_app.dart";
import 'common/back_data/back_data_manager.dart';
import "common/string_configuration.dart";
import "pages/login/landing_page.dart";

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    StringConfiguration();
    // BackDataManager();
    //
    // var account = BackDataManager().getAccount(1);

    return const GetMaterialApp(
      home: LandingPage(),
    );
  }
}
