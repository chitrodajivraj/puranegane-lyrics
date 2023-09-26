

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:puranegane_lyrics_app/Config/Utils/colors.dart';
import 'package:puranegane_lyrics_app/Config/Utils/images.dart';
import 'package:puranegane_lyrics_app/Config/Utils/styles.dart';

Widget SearchTextField({
  required TextEditingController controller,
  String? hintText,

}){
  return Container(
    child: TextFormField(
       controller: controller,
      style: TextStyle(
        color: black,
        fontWeight: FontWeight.w600,
        fontFamily: fontafamily,
        fontSize: 18
      ),
      // cursorHeight: 24,
      cursorWidth: 1.5,

      cursorColor: black,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
        enabled: true,
        hintText: hintText??"",
        helperStyle: TextStyle(
            color: hintColor,
            fontWeight: FontWeight.w700,
            fontFamily: fontafamily,
            fontSize: 18
        ),

        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(search_svg,width: 20,height: 20),
        ),
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: const BorderSide(color: black,width: 1)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: const BorderSide(color: black,width: 1)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: const BorderSide(color: black,width: 1)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(14),borderSide: const BorderSide(color: black,width: 1)),
      ),
    ),
  );
}