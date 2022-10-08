import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../types/constants.dart';
import '../../utils/font.dart';

class ExitAppPopup {
  showDialog(BuildContext context) async {
    return await showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel:
        MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext, Animation animation,
            Animation secondaryAnimation) {
          return Center(
            child: DefaultTextStyle(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              child: Container(
                width: double.maxFinite,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            color: kPrimaryColor),
                        child: Center(
                            child: Text(
                              "EXIT APP",
                              style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                            )
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                        child: Text(
                          "Are you sure you want to exit the app?",
                          style: Font.lato(Colors.grey, FontWeight.w400, 14.sp),

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(0.w, 15.h, 0.w, 0.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pop(context, false);
                              },
                              child: Container(
                                width: 120.w,
                                height: 37.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                    const BorderRadius.all(Radius.circular(35)),
                                    border: Border.all(color: kPrimaryColor)),
                                child: Center(
                                  child: Text(
                                    "No",
                                    style: Font.lato(kPrimaryColor, FontWeight.bold, 16.sp),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pop(context, true);
                              },
                              child: Container(
                                width: 120.w,
                                height: 37.h,
                                decoration: const BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(35)),
                                ),
                                child: Center(
                                  child: Text(
                                    "Yes",
                                    style: Font.lato(Colors.white, FontWeight.bold, 16.sp),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            )
          );
        });
  }
}
