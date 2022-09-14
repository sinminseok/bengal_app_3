import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/string_configuration.dart';
import '../../../types/string_type.dart';

class AccountStatusWidget extends StatefulWidget {
  const AccountStatusWidget({Key? key}) : super(key: key);

  @override
  AccountStatusWidgetState createState() => AccountStatusWidgetState();
}

class AccountStatusWidgetState extends State<AccountStatusWidget> {

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row (
          children: [
            Image.asset('assets/images/lobby/ico_user.png',
              width: 40,
              height: 40,
              alignment: Alignment.center,
              fit: BoxFit.cover,),

            Padding(
              padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
              child: Column(
                children: [
                  Text(StringConfiguration().getUi(UiStringType.hello),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFFBAB8C4),
                        fontWeight: FontWeight.w400),
                        fontSize: 12),
                  ),
                  Text(StringConfiguration().getUi(UiStringType.guestUp),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF8B80F8),
                        fontWeight: FontWeight.w400),
                        fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),

        Row (
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/lobby/xper_coin1.png',
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                            child: Text('0.00',
                              style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35),
                                  fontWeight: FontWeight.w400),
                                  fontSize: 12),
                            ),
                        )
                      ],
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/lobby/per_coin1.png',
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                          child: Text('0.00',
                            style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35),
                                fontWeight: FontWeight.w400),
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/lobby/havah_coin1.png',
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                          child: Text('0.00',
                            style: GoogleFonts.lato(textStyle: const TextStyle(color: Color(0xFF342B35),
                                fontWeight: FontWeight.w400),
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Image.asset('assets/images/lobby/btn_wallet.png',
                width: 40,
                height: 40,
                alignment: Alignment.center,
                fit: BoxFit.cover,),
            ),



          ],
        )


      ]
    );
  }

}
