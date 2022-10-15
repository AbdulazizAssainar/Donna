// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'package.dart';

void loadprograminfo() {
  settingup = 'loading app info';
  language = 'english';
  theme = 'light';
  spacingwidth = screenwidth * 0.75;
  loadtheme();
  loadlanguage();
}

void loadtheme() {
  settingup = 'loading app theme';

  buttonAction = Color(0xff852856);
  buttonWhite = Color(0xffffffff);
  buttonBlack = Color(0xff000000);
  buttonOffWhite = Color(0xffF9FBFC);
  buttonDarkGrey = Color(0xff060403);

  if (isdarkMode) {
    color1 = Color(0xffFFFFFF);
    color2 = Color(0xffEBEBEB);
    color3 = Color(0xffDEDEDE);
    color4 = Color(0xffC4C4C4);
    color5 = Color(0xff5E5E5E);
    sidebarbg = Color(0xffEFF1F3);
    innerbodybg = Color(0xffffffff);
    outerbodybg = Color(0xffEFF1F3);
    borderColor = Color(0xffEEEDF2);
    shadowColor = Color(0x33000000);
    sidebarIconsColorActive = Color(0xff852856);
    sidebarIconsColor = Color(0xff143340);
  }

  if (!isdarkMode) {
    color1 = Color(0xffC3C3C3);
    color2 = Color(0xff858585);
    color3 = Color(0xff383838);
    color4 = Color(0xff262626);
    color5 = Color(0xff000000);
    sidebarbg = Color(0xff060403);
    innerbodybg = Color(0xff000000);
    outerbodybg = Color(0xff060403);
    borderColor = Color(0xff100E0C);
    shadowColor = Color(0x33ffffff);
    sidebarIconsColorActive = Color(0xffC83D82);
    sidebarIconsColor = Color(0xffC3C3C3);
  }
}

void loadlanguage() {
  settingup = 'loading app language';
  if (language == 'english') {
    apptextAlign = TextAlign.left;
  }
  if (language == 'arabic') {
    apptextAlign = TextAlign.right;
  }
}
