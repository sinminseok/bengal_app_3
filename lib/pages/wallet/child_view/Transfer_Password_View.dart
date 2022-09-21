import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../types/constants.dart';
import '../widget/Transfer_password_Widget.dart';



class Transfer_Password_View extends StatefulWidget {
  const Transfer_Password_View({Key? key}) : super(key: key);

  @override
  _Transfer_Password_ViewState createState() => _Transfer_Password_ViewState();
}

class _Transfer_Password_ViewState extends State<Transfer_Password_View> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
                child: Image.asset(
                  "assets/images/wallet/logo.png",
                  width: size.width * 0.6,
                )),
            SizedBox(
              height: size.height * 0.03,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("ENTER YOUR PASSWORD",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wallet_Transfer_password_Widget(),
            )


          ],
        ),
      ),
    );
  }
}