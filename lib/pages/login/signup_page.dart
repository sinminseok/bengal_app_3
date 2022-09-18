import "package:bengal_app/pages/login/widget/login_logo_widget.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "../../common/string_configuration.dart";
import 'widget/icon_input_box_widget.dart';
import "../../types/string_type.dart";
import "../../utils/font.dart";
import "../../utils/relative_coordinate.dart";

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  SignupPageState createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  late ScrollController _scrollController;
  final GlobalKey _scrollKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(children: [
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 0, 0, 0, 0),
            child: LoginLogoWidget(scrollKey: _scrollKey),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 0, 40, 0, 0),
            child: Text(
              StringConfiguration().uiString(UiStringType.LOGIN_09),
              textAlign: TextAlign.center,
              style: Font.lato(const Color(0xFF8B80F8), FontWeight.bold, 20),
            ),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 20, 15, 0),
            height: 50,
            child: IconTextInputBox(
              assetImage: "assets/images/login/ico_account.png",
              hintText: StringConfiguration().uiString(UiStringType.LOGIN_11),
              hintFontWeight: FontWeight.w400,
              hintFontSize: 12,
              fillColor: Colors.white,
              prefixIconDefaultColor: const Color(0xFFBAB8C4),
              prefixIconFocusColor: const Color(0xFF8B80F8),
              boardDefaultColor: const Color(0x33D1D4DD),
              boardFocusColor: const Color(0xFFC2BAFF),
              borderRadius: 10,
              onTap: () {
                Scrollable.ensureVisible(
                  _scrollKey.currentContext!,
                  duration: const Duration(microseconds: 500),
                );
              },
            ),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 10, 15, 0),
            height: 50,
            child: IconTextInputBox(
              assetImage: "assets/images/login/ico_mail.png",
              hintText: StringConfiguration().uiString(UiStringType.LOGIN_03),
              hintFontWeight: FontWeight.w400,
              hintFontSize: 12,
              fillColor: Colors.white,
              prefixIconDefaultColor: const Color(0xFFBAB8C4),
              prefixIconFocusColor: const Color(0xFF8B80F8),
              boardDefaultColor: const Color(0x33D1D4DD),
              boardFocusColor: const Color(0xFFC2BAFF),
              borderRadius: 10,
              onTap: () {
                Scrollable.ensureVisible(
                  _scrollKey.currentContext!,
                  duration: const Duration(microseconds: 500),
                );
              },
            ),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 10, 15, 0),
            height: 50,
            child: IconTextInputBox(
              assetImage: "assets/images/login/ico_password.png",
              hintText: StringConfiguration().uiString(UiStringType.LOGIN_04),
              hintFontWeight: FontWeight.w400,
              hintFontSize: 12,
              fillColor: Colors.white,
              prefixIconDefaultColor: const Color(0xFFBAB8C4),
              prefixIconFocusColor: const Color(0xFF8B80F8),
              boardDefaultColor: const Color(0x33D1D4DD),
              boardFocusColor: const Color(0xFFC2BAFF),
              borderRadius: 10,
              onTap: () {
                Scrollable.ensureVisible(
                  _scrollKey.currentContext!,
                  duration: const Duration(microseconds: 500),
                );
              },
            ),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 10, 15, 0),
            height: 50,
            child: IconTextInputBox(
              assetImage: "assets/images/login/ico_repeat_password.png",
              hintText:
                  StringConfiguration().uiString(UiStringType.LOGIN_12),
              hintFontWeight: FontWeight.w400,
              hintFontSize: 12,
              fillColor: Colors.white,
              prefixIconDefaultColor: const Color(0xFFBAB8C4),
              prefixIconFocusColor: const Color(0xFF8B80F8),
              boardDefaultColor: const Color(0x33D1D4DD),
              boardFocusColor: const Color(0xFFC2BAFF),
              borderRadius: 10,
              onTap: () {
                Scrollable.ensureVisible(
                  _scrollKey.currentContext!,
                  duration: const Duration(microseconds: 500),
                );
              },
            ),
          ),
          Container(
              margin: RelativeCoordinate()
                  .getEdgeInsetsFromLTRB(PageType.login, context, 0, 40, 0, 0),
              child: InkWell(
                  borderRadius: BorderRadius.circular(28),
                  child: Ink.image(
                    width: 200,
                    height: 50,
                    image:
                        const AssetImage("assets/images/login/btn_login.png"),
                    fit: BoxFit.cover,
                    child: Center(
                      child: Text(
                        StringConfiguration().uiString(UiStringType.LOGIN_09),
                        style: Font.lato(
                            const Color(0xFFFFFFFF), FontWeight.w700, 14),
                      ),
                    ),
                  ),
                  onTap: () {})),
          Container(
              margin: EdgeInsets.only(
                  bottom: RelativeCoordinate().getY(PageType.login, context,
                      MediaQuery.of(context).viewInsets.bottom))),
        ]),
      ),
    );
  }
}
