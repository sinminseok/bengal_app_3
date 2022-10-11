import 'dart:ui';
import 'package:bengal_app/controller/storage_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/observer.dart';
import '../../../../types/constants.dart';
import '../../../../utils/font.dart';
import 'Status_Widget.dart';

class Add_Game_View extends StatefulWidget {
   Add_Game_View({Key? key}) : super(key: key);

  @override
  _Add_Game_View createState() => _Add_Game_View();
}

enum AddGameTabItem {
  ALL,
  ADD,
  ALREADY,
}

class _Add_Game_View extends State<Add_Game_View> implements Observer {
  @override
  void initState() {
    super.initState();
    StorageController().registerObserver(this);
  }

  @override
  updateObserver() {
    if (mounted) {
      setState(() {
      });
    }
  }

  final TextEditingController _searchController = TextEditingController();

  AddGameTabItem selectedTab = AddGameTabItem.ALL;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Stack(
          children: [
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 0.h),
                  width: 40.h,height: 40.h,
                  child: Image.asset("assets/images/common/back_button.png",)),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.fromLTRB(0.w, 9.h, 0.w, 0.h),

                child: Text(
                  "ADD YOUR GAME",
                  style: Font.lato(Colors.black, FontWeight.bold, 18.sp),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 390.w,
              height: 125.h,
              decoration: BoxDecoration(
                border:
                Border(bottom: BorderSide(color: Colors.grey.shade300,),
                    top: BorderSide(color: Colors.grey.shade300,) ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 23.h, 15.w, 0.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = AddGameTabItem.ALL;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: AddGameTabItem.ALL != selectedTab
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                describeEnum(AddGameTabItem.ALL),
                                style: Font.lato(AddGameTabItem.ALL != selectedTab
                                    ? Colors.grey
                                    : Colors.white,
                                    FontWeight.w400, 12.sp),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = AddGameTabItem.ADD;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: AddGameTabItem.ADD != selectedTab
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                describeEnum(AddGameTabItem.ADD),
                                style: Font.lato(AddGameTabItem.ADD != selectedTab
                                    ? Colors.grey
                                    : Colors.white,
                                    FontWeight.w400, 12.sp),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedTab = AddGameTabItem.ALREADY;
                            });
                          },
                          child: Container(
                            width: 116.w,
                            height: 35.h,
                            decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.grey.shade300),
                                color: AddGameTabItem.ALREADY != selectedTab
                                    ? Colors.white
                                    : kPrimaryColor,
                                borderRadius: const BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Text(
                                describeEnum(AddGameTabItem.ALREADY),
                                style: Font.lato(AddGameTabItem.ALREADY != selectedTab
                                    ? Colors.grey
                                    : Colors.white,
                                    FontWeight.w400, 12.sp),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 20.h, 15.w, 0.h),
                    width: 360.w,
                    height: 37.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const IconTheme(
                              data: IconThemeData(color: Colors.grey),
                              child: Icon(
                                Icons.search,
                              )),
                          contentPadding: const EdgeInsets.all(14.0),
                          hintText: 'Please enter game name.',
                          hintStyle: Font.lato(const Color(0xFFBAB8C4), FontWeight.w400, 13.sp),),
                      style: Font.lato(Colors.black, FontWeight.w400, 13.sp),
                      controller: _searchController,
                    ),
                  )
                ],
              ),
            ),

        AddGameTabItem.ALL == selectedTab
            ? Center(
              child: SizedBox(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: StorageController().getAllDemandGameList().list.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Status_Widget(StorageController().getAllDemandGameList().list[idx]);
                    }
                ),
              ),
            )
            :Container(),

        AddGameTabItem.ADD == selectedTab ?
            Center(
              child: SizedBox(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: StorageController().gameDemandList.list.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Status_Widget(StorageController().gameDemandList.list[idx]);
                    }
                ),
              ),
            ) :
            Container(),

        AddGameTabItem.ALREADY == selectedTab ?
            Center(
              child: SizedBox(
                width: 360.w,
                height: 600.h,
                child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: StorageController().gameMyDemandList!.list.length,
                    itemBuilder: (BuildContext ctx, int idx) {
                      return Status_Widget(StorageController().gameMyDemandList!.list[idx]);
                    }
                ),
              ),
            ):
            Container()
          ],
        ),
      ),

    );
  }
}
