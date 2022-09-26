import "package:bengal_app/pages/login/signup_page.dart";
import "package:bengal_app/pages/login/widget/login_logo_widget.dart";
import "package:flutter/material.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import "package:get/get.dart";
import '../../Controller/storage_controller.dart';
import "../../common/string_configuration.dart";
import '../frame/Frame_View.dart';
import 'widget/icon_input_box_widget.dart';
import "../../types/string_type.dart";
import "../../utils/font.dart";

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

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    _focusNode.addListener(() {
      setState(() {});
    });
    super.initState();
    _scrollController = ScrollController();

    _isRemember = StorageController().isRemember;
    if (_isRemember) {
      emailController.text = StorageController().rememberEmail;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _scrollController.dispose();
  }

  void _onFocusChange() {
    //debugPrint("Focus: ${_focusNode.hasFocus.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FF),
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onPanDown: (_) {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          reverse: true,
          child: Column(children: [
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
              child: LoginLogoWidget(scrollKey: _scrollKey),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 40.h, 0.w, 0.h),
              child: Text(
                StringConfiguration().uiString(UiStringType.LOGIN_02),
                textAlign: TextAlign.center,
                style:
                Font.lato(const Color(0xFF8B80F8), FontWeight.bold, 20.sp),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.h, 0.w),
              height: 50.h,
              child: IconTextInputBox(
                  assetImage: "assets/images/login/ico_mail.png",
                  hintText:
                  StringConfiguration().uiString(UiStringType.LOGIN_03),
                  hintFontWeight: FontWeight.w400,
                  hintFontSize: 12.sp,
                  fillColor: Colors.white,
                  prefixIconDefaultColor: const Color(0xFFBAB8C4),
                  prefixIconFocusColor: const Color(0xFF8B80F8),
                  boardDefaultColor: const Color(0x33D1D4DD),
                  boardFocusColor: const Color(0xFFC2BAFF),
                  borderRadius: 10,
                  onTap: () {
                    // _scrollController.animateTo(90.h,
                    //     duration: const Duration(milliseconds: 500),
                    //     curve: Curves.ease);
                    Scrollable.ensureVisible(
                      _scrollKey.currentContext!,
                      duration: const Duration(microseconds: 500),
                    );
                  },
                  controller: emailController),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 15.h, 15.w, 0.h),
              height: 50.h,
              child: IconTextInputBox(
                assetImage: "assets/images/login/ico_password.png",
                hintText: StringConfiguration().uiString(UiStringType.LOGIN_04),
                hintFontWeight: FontWeight.w400,
                hintFontSize: 12.sp,
                fillColor: Colors.white,
                prefixIconDefaultColor: const Color(0xFFBAB8C4),
                prefixIconFocusColor: const Color(0xFF8B80F8),
                boardDefaultColor: const Color(0x33D1D4DD),
                boardFocusColor: const Color(0xFFC2BAFF),
                borderRadius: 10,
                onTap: () {
                  // _scrollController.animateTo(90.h,
                  //     duration: const Duration(milliseconds: 500),
                  //     curve: Curves.ease);
                  Scrollable.ensureVisible(
                    _scrollKey.currentContext!,
                    duration: const Duration(microseconds: 500),
                  );
                },
                controller: passwordController,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 2.h, 15.w, 0.h),
              height: 32.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 18.w,
                          height: 18.h,
                          color: Colors.white,
                          child: Checkbox(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5)),
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
                          margin: EdgeInsets.fromLTRB(5.w, 0.h, 0.w, 0.h),
                          child: Text(
                            StringConfiguration()
                                .uiString(UiStringType.LOGIN_05),
                            style: Font.lato(const Color(0xFF746F7B),
                                FontWeight.w400, 12.sp),
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        StringConfiguration().uiString(UiStringType.LOGIN_06),
                        style: Font.lato(
                            const Color(0xFF8B80F8), FontWeight.w400, 12.sp),
                      ),
                    ),
                  ]),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0.w, 40.h, 0.w, 0.h),
                child: InkWell(
                    borderRadius: BorderRadius.circular(28),
                    child: Ink.image(
                      width: 175.w,
                      height: 46.h,
                      image:
                      const AssetImage("assets/images/login/btn_login.png"),
                      fit: BoxFit.fill,
                      child: Center(
                        child: Text(
                          StringConfiguration().uiString(UiStringType.LOGIN_02),
                          style: Font.lato(
                              const Color(0xFFFFFFFF), FontWeight.w700, 14.sp),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (!StorageController().signIn(
                          emailController.text,
                          passwordController.text,
                          _isRemember)) {
                        Fluttertoast.showToast(
                            msg: 'Login Fail',
                            backgroundColor: Colors.grey,
                            textColor: Colors.black,
                            gravity: ToastGravity.CENTER);
                      } else {
                        Get.offAll(const Frame_View());
                      }
                    })),
            Container(
              //color: Colors.red,
              height: 32.h,
              margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  StringConfiguration().uiString(UiStringType.LOGIN_07),
                  style: Font.lato(
                      const Color(0xFFBAB8C4), FontWeight.w400, 12.sp),
                ),
                TextButton(
                  onPressed: () {
                    Get.offAll(const SignupPage());
                  },
                  child: Text(
                    StringConfiguration().uiString(UiStringType.LOGIN_08),
                    style: Font.lato(
                        const Color(0xFF8B80F8), FontWeight.w400, 12.sp),
                  ),
                ),
              ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
              child: TextButton(
                onPressed: () {
                  StorageController().clear().then((value) =>
                  {
                    Fluttertoast.showToast(
                        msg: 'Data Cleared',
                        backgroundColor: Colors.grey,
                        textColor: Colors.black,
                        gravity: ToastGravity.CENTER)
                  });
                },
                child: Text(
                  StringConfiguration().uiString(UiStringType.LOGIN_10),
                  style: Font.lato(
                      const Color(0xFF746F7B), FontWeight.w400, 14.sp, true),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .viewInsets
                        .bottom))
          ]),
        ),
      ),
    );
  }
}
