import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../controller/Frame_controller/frame_controller.dart';
import '../../../types/constants.dart';
import '../../../utils/font.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> iconList;
  final List<String> titleList;

  CustomBottomNavigationBar(
      {this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange,
      required this.titleList});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var select;
  int _selectedIndex = 0;
  List<String> _iconList = [];
  List<String> _titleList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
    _titleList = widget.titleList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];
    List<String> _navBarStringList = [];
    select = Provider.of<Frame_Controller>(context, listen: false);

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i, _titleList[i]));
    }

    return Container(
      padding: EdgeInsets.fromLTRB(10.w, 0, 10.w, 0),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: boxShadowColor,
            blurRadius: 2,
            offset: Offset(0, -1),
          )
        ]
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _navBarItemList,
      ),
    );
  }

  Widget buildNavBarItem(String icon, int index, String title) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          select.selectedItem = index;
        });
      },
      child: Container(
        height: 50.h,
        width: 50.w,
        margin: EdgeInsets.fromLTRB(0.w, 0.h, 0.w, 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Visibility(
              visible: index == select.selectedItem,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0, 1],
                      colors: [
                        linearBrightnessColor,
                        linearDarknessColor,
                      ]
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5)
                  ),
                ),
                child: SizedBox(
                  width: 18.w,
                  height: 2.h,
                ),
              ),
            ),
            SizedBox(
              width: 30.w,
              height: 30.h,
              child: ImageIcon(
                // size: 30,
                AssetImage("assets/images/lobby/icons/bottom_nav_icon/${index == select.selectedItem ? "${icon}_on" : icon}.png"),
                color: index == select.selectedItem ? kPrimaryColor : Colors.grey,
              ),
            ),
            Text(
              title,
              style: index == select.selectedItem
                  ? Font.lato(kPrimaryColor, FontWeight.w400, 8.sp)
                  : Font.lato(
                  const Color(0xFFBAB8C4), FontWeight.w400, 8.sp),
            )
          ],
        ),
      ),
    );
  }
}
