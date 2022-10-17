// ignore_for_file: prefer_const_constructors

import 'package:donna/class/theme.dart';
import 'package:flutter/material.dart';
import 'sidebar.dart';

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

Widget topbar(topbarChild) => Positioned(
    top: 0,
    child: Container(
      child: topbarChild,
      height: 60,
      width: screenwidth - (screenwidth * 0.2),
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 2.0, color: borderColor)),
        boxShadow: [
          BoxShadow(color: shadowColor, blurRadius: 1, spreadRadius: 0),
        ],
        color: innerbodybg,
      ),
    ));

Widget innerbody(topbarChild, innerbodyChild) => Column(
      children: [
        topbar(topbarChild),
        innerbodyChild,
      ],
    );

Widget body(sidebar1ChildrenTop, sidebar1ChildrenBottom, sidebar2ChildrenTop,
        sidebar2ChildrenBottom, bool isVisible, topbarChild, innerbodyChild) =>
    Row(
      children: [
        Stack(children: [
          Visibility(
            maintainState: true,
            maintainAnimation: true,
            visible: isVisible,
            replacement: sidebar(sidebar2ChildrenTop, sidebar2ChildrenBottom),
            child: sidebar(sidebar1ChildrenTop, sidebar1ChildrenBottom),
          ),
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [innerbody(topbarChild, innerbodyChild)],
        )
      ],
    );
