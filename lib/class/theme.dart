// ignore_for_file: prefer_const_constructors

import 'package:donna/class/package.dart';
import 'package:flutter/material.dart';

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

Color action1 = Color(0xFFC83D82),
    action2 = Color(0xFF707070),
    white1 = Color(0xFFFFFFFF),
    white2 = Color(0xFFF9FBFC),
    white3 = Color(0xFFEEEDF2),
    black1 = Color(0xFF100E0C),
    black2 = Color(0xFF060403),
    black3 = Color(0xFF000000);

void loadtheme() {
  settingup = 'loading app theme';

  buttonAction = Color(0xff852856);
  buttonWhite = Color(0xffffffff);
  buttonBlack = Color(0xff000000);
  buttonOffWhite = Color(0xffF9FBFC);
  buttonDarkGrey = Color(0xff060403);

  if (!isDarkMode) {
    sidebarbg = Color(0xffEFF1F3);
    innerbodybg = Color(0xffffffff);
    outerbodybg = Color(0xffEFF1F3);
    borderColor = Color(0xffEEEDF2);
    shadowColor = Color(0x33000000);
    sidebarIconsColorActive = Color(0xff852856);
    sidebarIconsColor = Color(0xff143340);
  }

  if (isDarkMode) {
    sidebarbg = Color(0xff060403);
    innerbodybg = Color(0xff000000);
    outerbodybg = Color(0xff060403);
    borderColor = Color(0xff100E0C);
    shadowColor = Color(0x33ffffff);
    sidebarIconsColorActive = Color(0xffC83D82);
    sidebarIconsColor = Color(0xffC3C3C3);
  }
}

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
    themeMode: appTheme,
    theme: themeDataLight(),
    darkTheme: themeDataDark(),
    home: home);
