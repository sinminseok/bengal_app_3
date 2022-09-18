import 'package:flutter/material.dart';
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
        height: 65,
        width: MediaQuery.of(context).size.width / _iconList.length,
        decoration: index == _selectedIndex
            ? const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    width: 1,
                    color: kPrimaryColor,
                  ),
                ),

                // color: index == _selectedItemIndex ? Colors.green : Colors.white,
              )
            : BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Column(
            children: [
              ImageIcon(
                AssetImage(icon),
                color: index == _selectedIndex ? kPrimaryColor : Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "$title",
                  style: index == _selectedIndex
                      ? const TextStyle(fontSize: 10, color: kPrimaryColor)
                      : const TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
