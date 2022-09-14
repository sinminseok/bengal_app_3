import 'package:flutter/material.dart';
import '../../../common/string_configuration.dart';
import '../../../types/string_type.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginLogoWidget extends StatelessWidget {
  const LoginLogoWidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Stack(
        children: [
          Image.asset('assets/images/login/bg_start_2.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,),

          Positioned(
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.25,
            child: Image.asset('assets/images/login/logo_2.png',
              fit: BoxFit.cover,),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.30,
            child: Text(StringConfiguration().getUi(UiStringType.welcome),
              style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFC2BAFF),
                  fontWeight: FontWeight.w400),
                  fontSize: 14),
              ),
          ),
        ]
    );
  }
}
