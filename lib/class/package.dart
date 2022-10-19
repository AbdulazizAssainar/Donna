// ignore_for_file: prefer_const_constructors, unused_import

import 'package:donna/class/theme.dart';
import 'package:donna/class/voids.dart';
import 'package:flutter/material.dart';
import '../Widgets/sidebar.dart';

late String language, settingup;
late TextAlign apptextAlign;
late double spacingwidth, screenwidth, screenheight;
late Widget sidebarChildrenTop, sidebarChildrenBottom;

late ThemeMode appTheme;
bool isDarkMode = appTheme == ThemeMode.dark;

Widget padding(double top, double bottom, double left, double right) => Padding(
    padding:
        EdgeInsets.only(top: top, bottom: bottom, left: left, right: right));

Widget maintext(text, double fontSize, FontWeight fontWeight, color) => Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );

Widget mainimage(name, double width, double height) => Image.asset(
      name,
      width: width,
      height: height,
    );

Widget maintextfield(width, labelText, bgcolor, ispassword) => SizedBox(
      width: width,
      child: Center(
        child: Column(
          children: [
            TextField(
              obscureText: ispassword,
              cursorHeight: 20,
              autofocus: false,
              textAlign: apptextAlign,
              controller: TextEditingController(text: ""),
              decoration: InputDecoration(
                filled: true,
                fillColor: bgcolor,
                labelText: labelText,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                alignLabelWithHint: true,
                //hintText: "Username",
                //prefixIcon: Icon(Icons.star),
                //suffixIcon: Icon(Icons.keyboard_arrow_down),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Color(0xff544E50), width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Color(0xff544E50), width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 0.0,
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Color(0xff544E50), width: 0.5),
                ),
              ),
            ),
            padding(10, 10, 0, 0)
          ],
        ),
      ),
    );
Widget innerbody(topbarChild, innerbodyChild, footerChild) => Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        topbar(topbarChild),
        innerbodyChild,
        footerChild,
      ],
    );
