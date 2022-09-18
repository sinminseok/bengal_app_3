import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Workshop_View extends StatefulWidget {
  const Workshop_View({Key? key}) : super(key: key);

  @override
  _Workshop_ViewState createState() => _Workshop_ViewState();
}

class _Workshop_ViewState extends State<Workshop_View> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // SizedBox(height: size.height,),
          Row(
            children: [
              SizedBox(width: size.width*0.05,),
              Image.asset("assets/images/workshop/empty_plus.png",width: size.width*0.4,),
              SizedBox(width: size.width*0.1,),
              Image.asset("assets/images/workshop/empty_plus.png",width: size.width*0.4,),
            ],
          ),
          Image.asset("assets/images/workshop/sub_machine.png",width: size.width*0.6,),
          Text("Select a Car for Minting")

        ],
      ),
    );
  }
}
