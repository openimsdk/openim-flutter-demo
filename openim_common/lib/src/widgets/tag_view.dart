import 'package:flutter/material.dart';

class TagView extends StatelessWidget {
  // const TagView({Key? key}) : super(key: key);
  const TagView(
      {super.key,
      required this.text,
      this.margin = 1,
      this.leftRadius = 5,
      this.rightRadius = 5,
      this.backgroundColor = Colors.blue,
      this.paddingHorizontal = 4,
      this.paddingVertical = 0,
      this.fontSize = 12,
      this.fontColor = Colors.white});

  final String text;
  final double margin;
  final double leftRadius;
  final double rightRadius;
  final Color backgroundColor;
  final double paddingHorizontal;
  final double paddingVertical;
  final double fontSize;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(leftRadius),
            right: Radius.circular(rightRadius)),
        color: backgroundColor,
      ),
      child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: paddingHorizontal,
            vertical: paddingVertical,
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: fontSize, color: fontColor),
          )),
    );
  }
}
