import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class MentorStackIcon extends StatelessWidget {
  final int n;
  final List<String> s;
  const MentorStackIcon({Key? key, required this.n, required this.s})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          right: 0,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: black,
              radius: 17,
              child: Image.network(
                s[0],
              ), //NetworkImage   AssetImage Image.asset
            ),
          ),
        ),
        Positioned(
          right: 18,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: black,
              radius: 17,
              child: Image.network(s[0]),
            ),
          ),
        ),
        Positioned(
          right: 35,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: black,
              radius: 17,
              child: Image.network(s[0]),
            ),
          ),
        ),
      ],
    );
  }
}
