import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  final List<String> s;
  const DrawerMenu({
    Key? key,
    required this.size,
    required this.s,
  }) : super(key: key);

  final Size size;

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  int curPos = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      right: 10,
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          //duration: const Duration(seconds: 5),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          //curve: Curves.fastOutSlowIn,
          child: ListView.separated(
            shrinkWrap: true,
            separatorBuilder: ((context, index) {
              return const SizedBox(
                height: 10,
              );
            }),
            itemBuilder: (_, i) {
              return GestureDetector(
                onTap: (() {
                  setState(() {
                    curPos = i;
                  });
                }),
                child: Text(
                  widget.s[i],
                  style: curPos == i
                      ? textStyleOrange2
                      : textStyleBlack2.copyWith(fontWeight: FontWeight.normal),
                ),
              );
            },
            itemCount: widget.s.length,
          ),
        ),
      ),
    );
  }
}
