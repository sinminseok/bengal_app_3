import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../types/constants.dart';

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

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i, _titleList[i]));
    }

    return Row(
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(String icon, int index, String title) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 89.h,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: kPrimaryColor,
                  ),
                ),

                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
              )
            : BoxDecoration(),
        child: Container(
          //padding: const EdgeInsets.only(bottom: 0.0),
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.fromLTRB(0.w, 10.h, 0.w, 0.h),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,

              children: [
                ImageIcon(
                size: 26.86.w,
                  AssetImage(icon),
                  color: index == _selectedIndex ? kPrimaryColor : Colors.grey,
                ),
                Container(
                  padding: const EdgeInsets.all(4.0),

                  child: Text(
                    "$title",
                    style: index == _selectedIndex
                        ? TextStyle(fontSize: 8.sp, color: kPrimaryColor)
                        : TextStyle(fontSize: 8.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
