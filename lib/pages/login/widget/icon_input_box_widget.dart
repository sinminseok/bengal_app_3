import "package:flutter/material.dart";

class IconTextInputBox extends StatefulWidget {
  const IconTextInputBox({
    Key? key,
    required this.assetImage,
    required this.hintText,
    required this.hintFontWeight,
    required this.hintFontSize,
    required this.fillColor,
    required this.prefixIconDefaultColor,
    required this.prefixIconFocusColor,
    required this.boardDefaultColor,
    required this.boardFocusColor,
    required this.borderRadius,
    this.onTap,
    required this.controller,
    required this.obscureText,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function()? onTap;
  final String assetImage;

  final String hintText;
  final FontWeight hintFontWeight;
  final double hintFontSize;

  final Color fillColor;
  final Color prefixIconDefaultColor;
  final Color prefixIconFocusColor;

  final Color boardDefaultColor;
  final Color boardFocusColor;
  final double borderRadius;
  final bool obscureText;

  @override
  IconTextInputBoxState createState() => IconTextInputBoxState();
}

class IconTextInputBoxState extends State<IconTextInputBox> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    _focusNode.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      controller: widget.controller,
      onTap: () {
        widget.onTap!();
      },
      focusNode: _focusNode,
      decoration: InputDecoration(
        filled: true,
        fillColor: widget.fillColor,
        prefixIcon: IconTheme(
          data: IconThemeData(
            color: _focusNode.hasFocus
                ? widget.prefixIconFocusColor
                : widget.prefixIconDefaultColor,
          ),
          child: ImageIcon(
            AssetImage(widget.assetImage),
          ),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
            color: _focusNode.hasFocus
                ? widget.prefixIconFocusColor
                : widget.prefixIconDefaultColor,
            fontWeight: FontWeight.w400,
            fontSize: 12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
          borderSide: BorderSide(
            color: widget.boardDefaultColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
          borderSide: BorderSide(color: widget.boardFocusColor, width: 1),
        ),
      ),
    );
  }
}
