import 'dart:async';

import 'package:cipher_schools/utils/test_data.dart';
import 'package:cipher_schools/widgets/animated%20widgets/splash.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int selected;
  final bool isDark;
  const BottomBar({Key? key, required this.selected, required this.isDark})
      : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  late int selected = selected = widget.selected;
  changeSelected(int i) {
    if (i == selected) {
      return;
    }
    setState(() {
      selected = i;
      if(i==2 || i==3){
        return;
      }
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) =>
              const SplashScreen(),
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        ),
      );

      if (i == 0) {
        Timer(
          const Duration(seconds: 3),
          (() => Navigator.pushNamedAndRemoveUntil(
              context, '/', (route) => false)),
        );
      } else if (i == 1) {
        Timer(
          const Duration(seconds: 3),
          (() => Navigator.pushNamedAndRemoveUntil(
              context, '/courses', (route) => false)),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: !widget.isDark ? Colors.white : black,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 8,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () => changeSelected(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: selected == 0
                      ? orange
                      : (!widget.isDark ? black : Colors.white),
                ),
                Text(
                  'Home',
                  style: TextStyle(
                    color: selected == 0
                        ? orange
                        : (!widget.isDark ? black : Colors.white),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => changeSelected(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  color: selected == 1
                      ? orange
                      : (!widget.isDark ? black : Colors.white),
                ),
                Text(
                  'Courses',
                  style: TextStyle(
                    color: selected == 1
                        ? orange
                        : (!widget.isDark ? black : Colors.white),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => changeSelected(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.compare_rounded,
                  color: selected == 2
                      ? orange
                      : (!widget.isDark ? black : Colors.white),
                ),
                Text(
                  'Trending',
                  style: TextStyle(
                    color: selected == 2
                        ? orange
                        : (!widget.isDark ? black : Colors.white),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => changeSelected(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: selected == 3
                      ? orange
                      : (!widget.isDark ? black : Colors.white),
                ),
                Text(
                  'My Profile',
                  style: TextStyle(
                    color: selected == 3
                        ? orange
                        : (!widget.isDark ? black : Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
