// ignore_for_file: prefer_const_constructors, unused_import

import 'package:donna/class/package.dart';
import 'package:donna/class/theme.dart';
import 'package:donna/class/voids.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hovering/hovering.dart';

// -------------------------------------- //
// --------------- Sidebar -------------- //
// -------------------------------------- //

Widget sidebar(sidebarChildrenTop, sidebarChildrenBottom) => Container(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
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
        double xpadding, function) =>
    Column(
      children: [
        InkWell(
          onTap: function,
          child: HoverContainer(
            padding: const EdgeInsets.only(right: 15, left: 15),
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
                          height: size,
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

Tab sideTabIcon(text, double size, svgPicture, onTap) => Tab(
        child: GestureDetector(
      onTap: onTap,
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        SvgPicture.asset(
          svgPicture,
          color: blue,
          width: size,
          height: size,
        ),
        const SizedBox(width: 10),
        Text(
          text,
          style: TextStyle(color: blue),
        ),
      ]),
    ));

Widget topbar(topbarChild) => Positioned(
    top: 0,
    child: Container(
      child: topbarChild,
      height: 60,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(width: 2.0, color: borderColor)),
        boxShadow: [
          BoxShadow(color: shadowColor, blurRadius: 1, spreadRadius: 0),
        ],
        color: innerbodybg,
      ),
    ));
