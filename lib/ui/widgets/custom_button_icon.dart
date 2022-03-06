import 'package:clone_gojek/common/my_colors.dart';
import 'package:clone_gojek/common/my_font_size.dart';
import 'package:flutter/material.dart';

class CustomButtonIcon extends StatelessWidget {
  final void action;
  final String iconPath;
  final String text;
  final double height;
  final double width;
  final double? fontSize;
  final bool isBold;
  final Color? fontColor;

  const CustomButtonIcon(
      {Key? key,
      this.action,
      required this.iconPath,
      required this.text,
      this.height = 50,
      this.width = 50,
      this.fontSize,
      this.isBold = false,
      this.fontColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => action,
      child: IntrinsicHeight(
          child: Column(
        children: [
          Image.asset(
            iconPath,
            height: height,
            width: width,
          ),
          const SizedBox(height: 8),
          Text(
            "Bayar",
            style: TextStyle(
              color: (fontColor == null) ? MyColors.blackText : fontColor,
             fontSize: (fontSize == null) ? MyFontSize.medium2 : fontSize,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          )
        ],
      )),
    );
  }
}
