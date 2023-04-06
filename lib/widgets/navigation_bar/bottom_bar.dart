import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int selected;
  const BottomBar({Key? key, required this.selected}) : super(key: key);

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
      if (i == 0) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/', (route) => false);
      } else if (i == 1) {
        Navigator.pushNamedAndRemoveUntil(
            context, '/courses', (route) => false);
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
          color: Colors.white,
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
                  color: selected == 0 ? orange : black,
                ),
                Text(
                  'Home',
                  style: TextStyle(color: selected == 0 ? orange : black),
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
                  color: selected == 1 ? orange : black,
                ),
                Text(
                  'Courses',
                  style: TextStyle(color: selected == 1 ? orange : black),
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
                  color: selected == 2 ? orange : black,
                ),
                Text(
                  'Trending',
                  style: TextStyle(color: selected == 2 ? orange : black),
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
                  color: selected == 3 ? orange : black,
                ),
                Text(
                  'My Profile',
                  style: TextStyle(color: selected == 3 ? orange : black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
