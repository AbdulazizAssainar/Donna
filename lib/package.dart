// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:system_theme/system_theme.dart';

import 'sidebar.dart';

late String theme, language, settingup;
late TextAlign apptextAlign;
late Color color1, color2, color3, color4, color5;
late Color sidebarbg,
    innerbodybg,
    outerbodybg,
    buttonAction,
    buttonWhite,
    buttonBlack,
    buttonOffWhite,
    buttonDarkGrey,
    borderColor,
    shadowColor,
    sidebarIconsColorActive,
    sidebarIconsColor;
late double spacingwidth, screenwidth, screenheight;
late Widget sidebarChildrenTop, sidebarChildrenBottom;

final isdarkMode = SystemTheme.isDarkMode;

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

Widget mainbutton(onPressed, text, double fontSize, double height, double width,
        fontWeight) =>
    SizedBox(
        width: width,
        height: height,
        child: TextButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: maintext(text, fontSize, fontWeight, color5),
        ));

Widget subbutton(onPressed, text, double fontSize, double height, double width,
        fontWeight) =>
    SizedBox(
        width: width,
        height: height,
        child: TextButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: maintext(text, fontSize, fontWeight, color1),
        ));

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

themeDataLight() => ThemeData(
      backgroundColor: Color(0xffffffff),
      scaffoldBackgroundColor: Color(0xffffffff),
      brightness: Brightness.light,
    );

themeDataDark() => ThemeData(
      backgroundColor: Color(0xff000000),
      scaffoldBackgroundColor: Color(0xff000000),
      brightness: Brightness.dark,
    );

materialApp(home) => MaterialApp(
    themeMode: ThemeMode.light,
    theme: themeDataLight(),
    darkTheme: themeDataDark(),
    home: home);
