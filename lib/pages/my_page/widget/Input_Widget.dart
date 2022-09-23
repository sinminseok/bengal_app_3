
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../types/constants.dart';

class Input_Widget extends StatefulWidget {
  String hint_text;
      TextEditingController controller; TextInputType keyboad_type;bool hide_input;bool sendcode;
   Input_Widget({Key? key,required this.hint_text,required this.controller,required this.keyboad_type,required this.hide_input,required this.sendcode}) : super(key: key);

  @override
  _Input_WidgetState createState() => _Input_WidgetState();
}

class _Input_WidgetState extends State<Input_Widget> {

  bool pw_see =true;

  @override
  Widget build(BuildContext context) {



    return Container(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
              margin: EdgeInsets.fromLTRB(15.w, 1.h, 15.w, 1.h),

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

                    width: 250.w,
                    child:widget.hide_input==true? TextField(
                      keyboardType: TextInputType.text,
                      controller: widget.controller,
                       obscureText: pw_see != true?false: true,
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
                          hintText: '${widget.hint_text}'),
                    ):
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: widget.controller,

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
                          hintText: '${widget.hint_text}'),
                    ),
                  ),

                  widget.sendcode == true?Container(
                    child: InkWell(
                        onTap: (){
                          print("send code to email");
                        },
                        child: Text("Send code",style: TextStyle(color: kPrimaryColor),)),
                  ):Container(),

                  widget.hide_input == true?Container(
                      margin: EdgeInsets.fromLTRB(30.w, 2.h, 15.w, 0.h),

                      child: InkWell(
                          onTap: (){
                            setState(() {
                              print(pw_see);

                              pw_see = !pw_see;
                            });

                          },
                          child: Icon(Icons.remove_red_eye_sharp,color: Colors.grey,))):Container()

                ],
              ),
            ),

        ],
      ),
    );
  }
}
