import "package:bengal_app/pages/login/signup_page.dart";
import "package:bengal_app/pages/login/widget/login_logo_widget.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import '../../common/frame/Frame_View.dart';
import "../../common/string_configuration.dart";
import 'widget/icon_input_box_widget.dart';
import "../../types/string_type.dart";
import "../../utils/font.dart";
import "../../utils/relative_coordinate.dart";

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late ScrollController _scrollController;
  late var _isRemember = false;
  final GlobalKey _scrollKey = GlobalKey();

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
  }

  void _onFocusChange() {
    //debugPrint("Focus: ${_focusNode.hasFocus.toString()}");
  }

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
              StringConfiguration().uiString(UiStringType.LOGIN_02),
              textAlign: TextAlign.center,
              style: Font.lato(const Color(0xFF8B80F8), FontWeight.bold, 20),
            ),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 20, 15, 0),
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
                .getEdgeInsetsFromLTRB(PageType.login, context, 15, 15, 15, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 18,
                        height: 18,
                        color: Colors.white,
                        child: Checkbox(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          side: const BorderSide(
                              color: Color(0xFFEBEBEB),
                              width: 1,
                              style: BorderStyle.solid),
                          activeColor: const Color(0xFF8B80F8),
                          checkColor: Colors.white,
                          value: _isRemember,
                          onChanged: (value) {
                            setState(() {
                              _isRemember = value!;
                            });
                          },
                        ),
                      ),
                      Container(
                        margin: RelativeCoordinate().getEdgeInsetsFromLTRB(
                            PageType.login, context, 5, 0, 0, 0),
                        child: Text(
                          StringConfiguration()
                              .uiString(UiStringType.LOGIN_05),
                          style: Font.lato(
                              const Color(0xFF746F7B), FontWeight.w400, 16),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      StringConfiguration()
                          .uiString(UiStringType.LOGIN_06),
                      style: Font.lato(
                          const Color(0xFF8B80F8), FontWeight.w400, 16),
                    ),
                  ),
                ]),
          ),
          Container(
              margin: RelativeCoordinate()
                  .getEdgeInsetsFromLTRB(PageType.login, context, 0, 45, 0, 0),
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
                        StringConfiguration().uiString(UiStringType.LOGIN_02),
                        style: Font.lato(
                            const Color(0xFFFFFFFF), FontWeight.w700, 14),
                      ),
                    ),
                  ),
                  onTap: () {
                    Get.offAll(const Frame_View());
                  })),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 0, 21, 0, 0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                StringConfiguration().uiString(UiStringType.LOGIN_07),
                style: Font.lato(const Color(0xFFBAB8C4), FontWeight.w400, 12),
              ),
              TextButton(
                onPressed: () {
                  Get.offAll(const SignupPage());
                },
                child: Text(
                  StringConfiguration().uiString(UiStringType.LOGIN_08),
                  style:
                      Font.lato(const Color(0xFF8B80F8), FontWeight.w400, 12),
                ),
              ),
            ]),
          ),
          Container(
            margin: RelativeCoordinate()
                .getEdgeInsetsFromLTRB(PageType.login, context, 0, 30, 0, 0),
            child: TextButton(
              onPressed: () {
                debugPrint("dataReset tapped");
              },
              child: Text(
                StringConfiguration().uiString(UiStringType.LOGIN_10),
                style: Font.lato(
                    const Color(0xFF746F7B), FontWeight.w400, 14, true),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  bottom: RelativeCoordinate().getY(PageType.login, context,
                      MediaQuery.of(context).viewInsets.bottom))),
        ]),
      ),
    );
  }
}
