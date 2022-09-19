import 'package:flutter/material.dart';
import '../../../types/constants.dart';
import '../widget/History_listview_Widget.dart';
import '../widget/Pending_listview_Widget.dart';

class Spending_bottom_container extends StatefulWidget {
  const Spending_bottom_container({Key? key}) : super(key: key);

  @override
  _Spending_bottom_containerState createState() => _Spending_bottom_containerState();
}

class _Spending_bottom_containerState extends State<Spending_bottom_container> {
  bool pending_selected = true;
  bool history_selected = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(

      width: size.width*1,
      height: size.height*0.31,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 2.0,
              offset: Offset(5, 0), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)),
          color: Colors.grey.shade100),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      pending_selected = true;
                      history_selected = false;
                    });
                  },
                  child: Column(
                    children: [
                      Text("Pending",style: pending_selected != true?TextStyle( color: Colors.grey):TextStyle(fontWeight: FontWeight.bold),),
                      pending_selected != true ? SizedBox(height: size.height*0.01,):Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(width: size.width*0.12,color: kPrimaryColor,height: size.height*0.004,),
                      )
                    ],
                  ),
                ),
                SizedBox(width: size.width*0.06,),
                InkWell(
                  onTap: (){
                    setState(() {
                      pending_selected = false;
                      history_selected = true;
                    });
                  },
                  child: Column(
                    children: [
                      Text("History",style: history_selected != true?TextStyle( color: Colors.grey):TextStyle(fontWeight: FontWeight.bold),),
                      history_selected != true ? SizedBox(height: size.height*0.01,):Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(width: size.width*0.12,color: kPrimaryColor,height: size.height*0.004,),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          pending_selected == true ? Pending_listview(size) :Container(),
          history_selected == true? History_listview(size) : Container()
        ],
      ),
    );
  }
}
