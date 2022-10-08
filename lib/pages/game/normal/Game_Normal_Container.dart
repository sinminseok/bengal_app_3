import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import '../../../common/string_configuration.dart';
import '../../../controller/assets_controller.dart';
import '../../../controller/storage_controller.dart';
import '../../../types/common.dart';
import '../../../types/string_type.dart';
import '../../../utils/font.dart';
import '../../../models/game.dart';
import '../../../controller/game_launcher.dart';
import '../../game_play/Play_Information_View.dart';

Widget Game_Normal_Container(BuildContext context, GameInfo game) {
  return InkWell(
    onTap: (){
      if (!StorageController().isPossibleMining(game)) {
        Fluttertoast.showToast(
            msg: StringConfiguration().uiString(UiStringType.TOAST_MESSAGE_06),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            gravity: ToastGravity.CENTER);
      } else {
        Navigator.push(
            context,
            PageTransition(
                type: PageTransitionType.fade,
                child: Play_information_View(game: game)));
      }
    },
    child: Container(
      width: 175.w,
      height: 70.h,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [

          Row(
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment:Alignment.topLeft,
                      fit: BoxFit.fill,
                      image: AssetImage(game.gameIconAsset())),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      game.titleString(),
                      style: Font.lato(const Color(0xFF342B35),
                          FontWeight.bold, 13.sp),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Row(
                        children: [
                          Image.asset(
                            AssetsController().getCoinIcon(CoinType.XPer),
                            width: 12.w,
                            height: 12.h,
                          ),
                          Text(
                            game.xPerPerPowerString(),
                            style: Font.lato(Colors.grey, FontWeight.bold, 10.sp),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 39.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: Text(
                            "x1",
                            style: Font.lato(Colors.grey, FontWeight.w400, 10.sp),
                          )),
                    ),
                  ],
                ),
              )

            ],
          ),
        ],
      ),
    ),
  );
}
