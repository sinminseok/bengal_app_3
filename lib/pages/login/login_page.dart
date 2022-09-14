import 'package:bengal_app/pages/login/signup_page.dart';
import 'package:bengal_app/pages/login/widget/login_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/string_configuration.dart';
import '../../types/string_type.dart';
import '../lobby/lobby_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late ScrollController _scrollController;
  late var _isRember = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      body: Column(
          children: [
            const LoginLogoWidget(),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(StringConfiguration().getUi(UiStringType.login),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8)),
                      fontSize: 20),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: ImageIcon(AssetImage("assets/images/login/ico_mail.png"),),
                  labelText: 'Email Address',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: ImageIcon(AssetImage("assets/images/login/ico_password.png"),),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                            activeColor: Colors.white,
                            checkColor: Colors.red,
                            value: _isRember,
                            onChanged: (value) {
                              setState(() {
                                _isRember = value!;
                              });
                            },
                          ),
                        ),
                        Text(StringConfiguration().getUi(UiStringType.rememberMe),
                          style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF746F7B),
                              fontWeight: FontWeight.w400),
                              fontSize: 16),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {  },
                      child: Text(StringConfiguration().getUi(UiStringType.forgotPassword),
                        style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8),
                            fontWeight: FontWeight.w400),
                            fontSize: 16),
                      ),
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: GestureDetector(
                onTap: () {
                  Get.offAll(const LobbyPage());
                },
                child: Image.asset('assets/images/login/btn_login.png',
                  width: 200,
                  height: 50,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 21, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(StringConfiguration().getUi(UiStringType.forgotPassword),
                      style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFBAB8C4),
                          fontWeight: FontWeight.w400),
                          fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () { Get.offAll(const SignupPage()); },
                      child: Text(StringConfiguration().getUi(UiStringType.signUpLow),
                        style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8),
                            fontWeight: FontWeight.w400),
                            fontSize: 12),
                      ),
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 99, 0, 0),
              child: TextButton(
                onPressed: () { debugPrint('dataReset tapped'); },
                child: Text(StringConfiguration().getUi(UiStringType.dataReset),
                  style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF746F7B),
                      fontWeight: FontWeight.w400),
                      fontSize: 14),
                ),
              ),
            ),
          ]
      ),
    );
  }

}
