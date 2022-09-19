import "package:flutter/material.dart";
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

    // var account = BackDataManager().getAccount(1);
    // debugPrint('account=$account');
    return const GetMaterialApp(
      home: LandingPage(),
    );
  }
}
