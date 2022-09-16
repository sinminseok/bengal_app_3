import 'package:flutter/material.dart';
import '../../../common/string_configuration.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../../utils/relative_coordinate.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({Key? key, required this.scrollKey}) : super(key: key);

  final GlobalKey scrollKey;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/login/bg_start_2.png',
        width: RelativeCoordinate().getX(PageType.login, context, 390),
        height: RelativeCoordinate().getY(PageType.login, context, 300),
        alignment: Alignment.topCenter,
        fit: BoxFit.fill,
      ),
      Positioned(
        key: scrollKey,
        left: RelativeCoordinate().getX(PageType.login, context, 0),
        top: RelativeCoordinate().getY(PageType.login, context, 100),
        child: const Text(''),
      ),
      Positioned(
        left: RelativeCoordinate().getX(PageType.login, context, 30),
        top: RelativeCoordinate().getY(PageType.login, context, 214),
        child: Image.asset(
          'assets/images/login/logo_2.png',
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
        left: RelativeCoordinate().getX(PageType.login, context, 30),
        top: RelativeCoordinate().getY(PageType.login, context, 253),
        child: Text(
          StringConfiguration().uiString(UiStringType.welcome),
          style: Font.lato(const Color(0xFFC2BAFF), FontWeight.w400, 14),
        ),
      ),
    ]);
  }
}
