import 'package:flutter/material.dart';

/*
O1 25B
O2 18
O3 15

W1 25B
W2 18
W3 15

B1 25B
B2 18
B3 15

G1 25B
G2 18
G3 15
*/
// Orange
const textStyleOrange1 = TextStyle(
    color: Color.fromRGBO(243, 145, 46, 1),
    fontSize: 25,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis);
const textStyleOrange2 = TextStyle(
    color: Color.fromRGBO(243, 145, 46, 1),
    fontSize: 18,
    overflow: TextOverflow.ellipsis);
const textStyleOrange3 = TextStyle(
    color: Color.fromRGBO(243, 145, 46, 1),
    fontSize: 15,
    overflow: TextOverflow.ellipsis);

//White
const textStyleWhite1 = TextStyle(
    color: Colors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis);
const textStyleWhite2 = TextStyle(
    color: Colors.white, fontSize: 18, overflow: TextOverflow.ellipsis);
const textStyleWhite3 = TextStyle(
    color: Colors.white, fontSize: 15, overflow: TextOverflow.ellipsis);

//Black
const textStyleBlack1 = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis);
const textStyleBlack2 = TextStyle(
    color: Colors.black, fontSize: 18, overflow: TextOverflow.ellipsis);
const textStyleBlack3 = TextStyle(
    color: Colors.black, fontSize: 15, overflow: TextOverflow.ellipsis);

//Grey
const textStyleGrey1 = TextStyle(
    color: Colors.grey,
    fontSize: 25,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis);
const textStyleGrey2 = TextStyle(
    color: Colors.grey, fontSize: 18, overflow: TextOverflow.ellipsis);
const textStyleGrey3 = TextStyle(
    color: Colors.grey, fontSize: 13, overflow: TextOverflow.ellipsis);

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

