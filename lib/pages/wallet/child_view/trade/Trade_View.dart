
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../types/constants.dart';

class Trade_View extends StatefulWidget {
  const Trade_View({Key? key}) : super(key: key);

  @override
  _Trade_ViewState createState() => _Trade_ViewState();
}

class _Trade_ViewState extends State<Trade_View> {
  bool change = false;
  bool cars_ontap = false;
  bool boxs_ontap = false;
  TextEditingController _priceController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kAppbarColor,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(
          color: kAppbarColor, //change your color here
        ),
        toolbarHeight: 97.h,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: size.width * 0.1,
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                child: Text(
                  "Trade",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 300.w, 0.h),

                child: Text("From",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),)),

            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                    child: Row(

                      children: [
                        Image.asset("assets/images/wallet/icons/usdc_icon.png",width: 30.w,height: 30.h,),
                        Text("USDC",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                      child: Text("Change >",style: TextStyle(color: kPrimaryColor),))
                ],
              ),

            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),

              width: 360.w,
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [

                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                    width: size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: _priceController,
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          focusColor: kPrimaryColor,
                          hoverColor: kPrimaryColor,
                          fillColor: kPrimaryColor,
                          labelStyle: TextStyle(color: kPrimaryColor),
                          hintStyle: TextStyle(
                              fontSize: 12, color: Colors.grey.shade500),
                          contentPadding: EdgeInsets.only(
                              left: 5, bottom: 5, top: 5, right: 5),
                          hintText: 'Please enter the selling price'),
                    ),
                  ),
                  Text(
                    "All",
                    style: TextStyle(color: kPrimaryColor, fontSize: 13),
                  )
                ],
              ),
            ),
            Text(
              "Available : value XPER",
              style: TextStyle(color: kPrimaryColor),
            ),



            Container(
                margin: EdgeInsets.fromLTRB(15.w, 10.h, 300.w, 0.h),

                child: Text("To",style: TextStyle(color: Colors.grey.shade600,fontSize: 18),)),

            Container(
              margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
              width: 360.w,
              height: 70.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),

                    child: Row(

                      children: [
                        Image.asset("assets/images/lobby/icons/appbar_icons/per_icon.png",width: 30.w,height: 30.h,),
                        Text("PER",style: TextStyle(color: kPerColor,fontWeight: FontWeight.bold,fontSize: 16),)
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                      child: Text("Change >",style: TextStyle(color: kPrimaryColor),))
                ],
              ),

            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),

              width: 360.w,
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [

                  Container(
                      margin: EdgeInsets.fromLTRB(15.w, 3.h, 15.w, 0.h),

                      width: size.width * 0.7,
                      child: Text("-")
                  ),

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.w, 18.h, 15.w, 20.h),

              width: 360.w,
              height: 40.h,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 Container(
                     margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),
                     child: Text("Silppage Tolerance",style: TextStyle(color: Colors.grey.shade500,fontSize: 15),)),
                  Container(
                    margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                    child: Row(
                      children: [
                        Container(
                            margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 0.h),

                            child: Text("%",style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold),)),
                        Text("Change > ",style: TextStyle(color: kPrimaryColor),)
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}
