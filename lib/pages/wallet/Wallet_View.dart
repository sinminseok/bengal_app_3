import 'package:flutter/material.dart';

import '../../types/constants.dart';
import 'child_view/Spending_View.dart';
import 'child_view/Wallet_Account_View.dart';

class Wallet_View extends StatefulWidget {
  const Wallet_View({Key? key}) : super(key: key);

  @override
  _Wallet_ViewState createState() => _Wallet_ViewState();
}

class _Wallet_ViewState extends State<Wallet_View> {
  bool spending_selected = true;
  bool wallet_selected = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kAppbarColor,
      appBar:  AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        toolbarHeight: size.height * 0.082,
        elevation: 0,
        backgroundColor: kAppbarColor,
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Row(
            children: [
              SizedBox(
                width: size.width * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Token Management",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ),
              SizedBox(width: size.width*0.15,),

              Image.asset(
                "assets/images/wallet/icons/setting_button.png",
                width: size.width * 0.09,
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(


          children: [
            //selected buttons
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  children: [
                    SizedBox(width: size.width*0.03,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          spending_selected = true;
                          wallet_selected = false;
                        });
                      },
                      child: Container(
                        width: size.width * 0.43,
                        height: size.height * 0.055,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            color: spending_selected != true
                                ? Colors.white
                                : kPrimaryColor,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "Spending",
                            style: TextStyle(
                                color: spending_selected != true
                                    ? Colors.grey
                                    : Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: size.width*0.02,),
                    InkWell(
                      onTap: (){
                        setState(() {
                          spending_selected = false;
                          wallet_selected = true;
                        });
                      },
                      child: Container(
                        width: size.width * 0.43,
                        height: size.height * 0.055,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                            color: wallet_selected != true
                                ? Colors.white
                                : kPrimaryColor,
                            borderRadius:
                            BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                color: wallet_selected != true
                                    ? Colors.grey
                                    : Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            spending_selected !=true?Container():Row(
              children: [
                SizedBox(width: size.width*0.29,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Spending Account",style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize: 18),),
                ),
                SizedBox(width: size.width*0.19,),
                Image.asset(
                  "assets/images/wallet/icons/question_icon.png",
                  width: size.width * 0.06,
                )
              ],
            ),
            wallet_selected !=true?Container():Row(
              children: [
                SizedBox(width: size.width*0.29,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Wallet Account",style: TextStyle(fontWeight: FontWeight.bold,color: kPrimaryColor,fontSize: 18),),
                ),
                SizedBox(width: size.width*0.19,),
                Image.asset(
                  "assets/images/wallet/icons/question_icon.png",
                  width: size.width * 0.06,
                )
              ],
            ),
            //Coin_Container_Widget(size,xper_value,per_value,HVH_value)
            spending_selected !=true?Container():Spending_View(size,20.32,20.0,2.32),
            wallet_selected !=true?Container():Wallet_Account_View(context,size,"GASDASDASD",20.0,20.0,20.0,20.0,10,10)

          ],
        ),
      ),
    );
  }
}
