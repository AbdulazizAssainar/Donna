// ignore_for_file: prefer_const_constructors

import 'package:donna/class/package.dart';
import 'package:donna/class/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';

// -------------------------------------- //
// --------------- Sidebar -------------- //
// -------------------------------------- //

Widget sidebar(sidebarChildrenTop, sidebarChildrenBottom) => Container(
      padding: const EdgeInsets.all(15),
      constraints: BoxConstraints(
        minHeight: screenheight,
        maxHeight: screenheight,
      ),
      width: screenwidth * 0.2,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 2.0, color: borderColor)),
        color: sidebarbg,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          sidebarChildrenTop,
          sidebarChildrenBottom,
        ],
      ),
    );

// -------------------------------------- //
// ----------- Sidebar Icons ------------ //
// -------------------------------------- //

Widget sidebaricon(title, assetName, inTitle, double size, Color color,
        Color hoverColor, double xpadding, function) =>
    Column(
      children: [
        InkWell(
          onTap: function,
          child: HoverContainer(
            hoverColor: hoverColor,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Column(
                children: [
                  padding(10, 0, 0, 0),
                  Row(
                    children: [
                      padding(0, 0, 10, 0),
                      Stack(children: <Widget>[
                        SvgPicture.asset(
                          assetName,
                          color: color,
                          width: size,
                        ),
                        SizedBox(
                          width: size,
                          height: size,
                          child: Center(
                            child: Text(
                              inTitle,
                              style: TextStyle(
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                      padding(0, 0, 10, 0),
                      Text(
                        title,
                        style: TextStyle(fontSize: 15, color: color),
                      ),
                    ],
                  ),
                  padding(10, 0, 0, 0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
