import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../../Controller/Frame_controller/frame_controller.dart';
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
      margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
      color: Colors.white,
      child: Row(
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
        width: 60.w,
        margin: EdgeInsets.fromLTRB(10.w, 0.h, 0.w, 0.h),
        decoration: index == select.selectedItem
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1.w,
                    color: kPrimaryColor,
                  ),
                ),

                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
              )
            : const BoxDecoration(),
        child: Container(
          //padding: const EdgeInsets.only(bottom: 0.0),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                size: 30,
                AssetImage(icon),
                color: index == select.selectedItem ? kPrimaryColor : Colors.grey,
              ),
              Text(
                "$title",
                style: index == select.selectedItem
                    ? Font.lato(kPrimaryColor, FontWeight.w400, 8.sp)
                    : Font.lato(
                        const Color(0xFFBAB8C4), FontWeight.w400, 8.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
