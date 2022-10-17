import 'dart:ui';
import 'package:donna/class/package.dart';
import 'package:donna/class/theme.dart';
import 'package:flutter/cupertino.dart';

void loadprograminfo() {
  settingup = 'loading app info';
  language = 'english';
  spacingwidth = screenwidth * 0.75;
  loadtheme();
  loadlanguage();
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
