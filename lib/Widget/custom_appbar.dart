import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Config/Utils/styles.dart';

Widget customAppBar(
    {String? text,
    Widget? backIcon,
    Widget? actionIcon1,
    Widget? actionIcon2,
    bool? isBackArrow,
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
            const SizedBox(width: 16),
            isBackArrow == true
                ? backIcon ?? const Icon(Icons.arrow_back_ios_new_outlined)
                : const SizedBox(),
            const SizedBox(width: 16),
            Center(
              child: Text(
                text ?? "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 16,
                  fontFamily: fontafamily,
                ),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isActionIcon1 == true ? actionIcon1 ?? const SizedBox() : const SizedBox(),
            const SizedBox(width: 16),
            isActionIcon2 == true ? actionIcon2 ?? const SizedBox() : const SizedBox(),
            const SizedBox(width: 16),
          ],
        )
      ],
    ),
  );
}

Widget newCustomAppBar(
    {Widget? iconLeft,
    Widget? iconRight1,
    Widget? iconRight2,
    String? title,
    Color? textColor,
    bool? isIconRight1,
      bool? isIconRight2,
      bool? isIconLeft,
    }) {
  return ClipRect(
    child: BackdropFilter(
      filter:  ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
      child: Container(
        padding: const EdgeInsets.only(bottom: 20,top: 20),
        decoration: BoxDecoration(
          color: gray.withOpacity(0.2),
          border: const Border(bottom: BorderSide(width: 1,color: light_gray))
        ),
        // margin:   EdgeInsets.only(left: 20.0,right: 20,top: 20),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20,top: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isIconLeft==true?iconLeft ?? const SizedBox():const SizedBox()
                ],
              ),
              Text(
                title.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textColor ?? Colors.black,
                  fontSize: 16,
                  fontFamily: fontafamily,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  isIconRight1==true?iconRight1 ?? const SizedBox():const SizedBox(),
                  isIconRight2==true?iconRight2 ?? const SizedBox():const SizedBox()
                ],
              )
            ],
          ),
        ),
      ),
    ),
  );
}
