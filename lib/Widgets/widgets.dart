// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget button(onPressed, datavisible, data, namevisible, name) => TextButton(
    onPressed: onPressed,
    child: Stack(children: [
      Visibility(visible: datavisible, child: Text(data)),
      Visibility(visible: namevisible, child: Image.asset(name))
    ]));
