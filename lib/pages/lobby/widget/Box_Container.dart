

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'box_container_detail_widget.dart';

class BoxContainer_Widget extends StatefulWidget {
  const BoxContainer_Widget({Key? key}) : super(key: key);

  @override
  _BoxContainer_WidgetState createState() => _BoxContainer_WidgetState();
}

class _BoxContainer_WidgetState extends State<BoxContainer_Widget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.87,
      height: size.height * 0.16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 5.0,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          color: Colors.white),
      child: Row(
        children: [
          BoxContainer_Detail_Widget(size,true,false,false,""),
          BoxContainer_Detail_Widget(size,false,true,false,""),
          BoxContainer_Detail_Widget(size,false,false,true,""),
          BoxContainer_Detail_Widget(size,true,false,false,"2h55m")
        ],
      ),
    );
  }
}
