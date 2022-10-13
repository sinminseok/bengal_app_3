import 'package:bengal_app/pages/lobby/widget/Box_Container.dart';
import 'package:bengal_app/pages/lobby/widget/Car_Main_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Game_play_Widget.dart';
import 'package:bengal_app/pages/lobby/widget/Value_Container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../controller/storage_controller.dart';
import '../../common/string_configuration.dart';
import '../../types/constants.dart';
import '../../types/string_type.dart';
import '../../utils/font.dart';
import '../common/exit_app_popup.dart';
import 'package:dotted_border/dotted_border.dart';

class Lobby_View extends StatefulWidget {
  Function navigationSelect;
  Lobby_View({Key? key,required this.navigationSelect}) : super(key: key);

  @override
  _Lobby_ViewState createState() => _Lobby_ViewState();
}

class _Lobby_ViewState extends State<Lobby_View> {
  //bool current_car = true;

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return await ExitAppPopup().showDialog(context) ?? false;
      },
      child: Scaffold(
        backgroundColor: kAppbarColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              //Buy a car Widget
              StorageController().carNftList!.list.isNotEmpty
                  ? Car_Main_StatefulWidget()
                  : InkWell(
                    onTap: () {
                      widget.navigationSelect(4);
                    },
                    child: Container(
                      width: 390.w,
                      height: 277.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 0,
                            blurRadius: 5.0,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(10),
                              color: const Color(0xffEBEBEB),
                              padding: const EdgeInsets.all(0),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                child: Container(
                                  height: 247.h,
                                  width: 360.w,
                                  color: EMPTY_F2F2F2,
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin:
                                EdgeInsets.fromLTRB(0.w, 68.74.h, 0.w, 0.h),
                                width: 280.w,
                                height: 110.h,
                                child: Image.asset(
                                  "assets/images/lobby/car_empty_img.png",
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(105.w, 20.91.h, 0.w, 0.h),

                                    child: Image.asset(
                                      "assets/images/lobby/icons/plus_icon_3.png",
                                      width: 20.w,
                                      height: 20.h,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        5.w, 18.91.h, 0.w, 0.h),
                                    child: Text(
                                      "Buy a car and enjoy the game",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
              ),

              //XPER Value,Per Value,Charge Value
              Value_Container(),

              BoxContainer_Widget(),

              Container(
                margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      StringConfiguration()
                          .uiString(UiStringType.LOBBY_SPECIALBOX_04),
                      style: Font.lato(
                          const Color(0xFF342B35), FontWeight.bold, 16.sp),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          widget.navigationSelect(3);
                        });
                      },
                      child: Text(
                        StringConfiguration()
                            .uiString(UiStringType.LOBBY_SPECIALBOX_05),
                        style: Font.lato(
                            const Color(0xFF8B80F8), FontWeight.w400, 10.sp),
                      ),
                    )
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
                child: SizedBox(
                  height: 100.h,
                  child: PageView.builder(
                    itemCount: StorageController().getCategoryGameList(0).list.length,
                    controller: PageController(viewportFraction: 0.92),
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Game_Play_Widget(
                          size, context, StorageController().getCategoryGameList(0).list[idx]
                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
