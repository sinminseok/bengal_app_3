import 'package:bengal_app/pages/login/widget/login_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/string_configuration.dart';
import '../../types/string_type.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  late ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      body: Column(
          children: [
            const LoginLogoWidget(),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Text(StringConfiguration().getUi(UiStringType.signUpUp),
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8)),
                    fontSize: 20),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: ImageIcon(AssetImage("assets/images/login/ico_account.png"),),
                  labelText: 'Username',
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
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: ImageIcon(AssetImage("assets/images/login/ico_mail.png"),),
                  //hintText: 'Hint Text',
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
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: ImageIcon(AssetImage("assets/images/login/ico_repeat_password.png"),),
                  labelText: 'Repeat Password',
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
              padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
              child: GestureDetector(
                onTap: () {
                  debugPrint('btn_signup tapped');
                },
                child: Image.asset('assets/images/login/btn_signup.png',
                  width: 200,
                  height: 50,
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,),
              ),
            ),

          ]
      ),
    );
  }

}
