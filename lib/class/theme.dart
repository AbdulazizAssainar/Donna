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
    sidebarIconsColor,
    hoverColor;

Color action1 = Color(0xFFC83D82),
    action2 = Color(0xFF852856),
    white1 = Color(0xFFFFFFFF),
    white2 = Color(0xFFF9FBFC),
    white3 = Color(0xFFEEEDF2),
    black1 = Color(0xFF100E0C),
    black2 = Color(0xFF060403),
    black3 = Color(0xFF000000),
    blue = Color(0xFF143340);

void loadtheme() {
  settingup = 'loading app theme';

  buttonAction = action2;
  buttonWhite = white1;
  buttonBlack = black3;
  buttonOffWhite = white3;
  buttonDarkGrey = black1;

  if (!isDarkMode) {
    sidebarbg = white2;
    innerbodybg = white1;
    outerbodybg = white2;
    borderColor = white3;
    shadowColor = Color(0x33100E0C);
    sidebarIconsColorActive = action2;
    sidebarIconsColor = blue;
    hoverColor = Color(0x0D000000);
  }

  if (isDarkMode) {
    sidebarbg = Color(0xff060403);
    innerbodybg = Color(0xff000000);
    outerbodybg = Color(0xff060403);
    borderColor = Color(0xff100E0C);
    shadowColor = Color(0x33ffffff);
    sidebarIconsColorActive = Color(0xffC83D82);
    sidebarIconsColor = Color(0xffC3C3C3);
    hoverColor = Color(0x0Dffffff);
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
