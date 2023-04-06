import 'package:flutter/material.dart';

const textStyleOrange1 = TextStyle(
    color: Color.fromRGBO(243, 145, 46, 1),
    fontSize: 40,
    fontWeight: FontWeight.bold);
const textStyleOrange2 = TextStyle(
    color: Color.fromRGBO(243, 145, 46, 1),
    fontSize: 23,
    fontWeight: FontWeight.bold);
const textStyleOrange3 =
    TextStyle(color: Color.fromRGBO(243, 145, 46, 1), fontSize: 18);

const textStyleWhite1 =
    TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);
const textStyleWhite2 = TextStyle(color: Colors.white, fontSize: 18);
const textStyleWhite3 = TextStyle(color: Colors.white, fontSize: 15);

const textStyleBlack1 =
    TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);
const textStyleBlack2 =
    TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold);
const textStyleBlack3 = TextStyle(color: Colors.black, fontSize: 15);

const textStyleGrey1 =
    TextStyle(color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold);
const textStyleGrey2 = TextStyle(color: Colors.grey, fontSize: 18);
const textStyleGrey3 = TextStyle(color: Colors.grey, fontSize: 13);

const gradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    // Color(0x69000000),
    // Color(0x7A000000),
    // Color(0xB1020200),
    // Color(0xBB050500),
    Color(0x00000000),
    Colors.black26,
    Colors.black45,
    Colors.black54
  ],
);


class ThemeManager {
  static final ThemeManager _singleton = ThemeManager._internal();

  factory ThemeManager() {
    return _singleton;
  }

  ThemeManager._internal();

  ThemeData _themeData = ThemeData.light();

  void setThemeData(ThemeData themeData) {
    _themeData = themeData;
  }

  ThemeData getThemeData() {
    return _themeData;
  }
}
