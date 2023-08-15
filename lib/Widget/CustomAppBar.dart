import 'package:flutter/material.dart';

Widget CustomAppBar(
    {String? text,
      Widget? backIcon,
      Widget? actionIcon1,
      Widget? actionIcon2,
      bool? isActionIcon1,
      bool? isActionIcon2,
      double? height,
      double? width,
      Color? appBarColor,
      Color? textColor}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: appBarColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 16),
            backIcon??Icon(Icons.arrow_back_ios_new_outlined),
            SizedBox(width: 16),
            Text(
              text??"",
              style: TextStyle(
                color: textColor??Colors.black,
                fontSize: 16,
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isActionIcon1==true
                ? actionIcon1??SizedBox()
                : SizedBox(),
            SizedBox(width: 16),
            isActionIcon2==true
                ? actionIcon2??SizedBox()
                : SizedBox(),
            SizedBox(width: 16),
          ],
        )
      ],
    ),
  );
}