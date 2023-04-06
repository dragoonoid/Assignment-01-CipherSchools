import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:cipher_schools/utils/url.dart';
import 'package:flutter/material.dart';

class AppBarCourses extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback showDrawer;
  final VoidCallback changeDark;
  final bool isDark;
  final VoidCallback showSearchBar;
  const AppBarCourses(
      {Key? key,
      required this.showDrawer,
      required this.changeDark,
      required this.isDark,
      required this.showSearchBar})
      : super(key: key);

  @override
  State<AppBarCourses> createState() => _AppBarCoursesState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarCoursesState extends State<AppBarCourses> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: !widget.isDark ? Colors.white : black,
      leading: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          width: size.width * 0.1,
          'assets/app_icon.png',
        ),
      ),
      titleSpacing: 3,
      title: SizedBox(
        width: size.width * 0.3,
        child: Text(
          'CipherSchools',
          style: !widget.isDark
              ? textStyleBlack2.copyWith(fontSize: 19)
              : textStyleWhite2.copyWith(fontSize: 19),
          overflow: TextOverflow.clip,
        ),
      ),
      elevation: 2,
      actions: [
        SizedBox(
          width: size.width * 0.55,
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  Icons.navigation_outlined,
                  color: !widget.isDark ? black : Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: GestureDetector(
                    onTap: widget.showDrawer,
                    child: Text(
                      'Browse',
                      style: !widget.isDark ? textStyleBlack3 : textStyleWhite3,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: widget.showDrawer,
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  color: !widget.isDark ? black : Colors.white,
                ),
              ),
              Expanded(
                child: Switch(
                  value: widget.isDark,
                  onChanged: (_) {
                    widget.changeDark();
                  },
                  activeThumbImage:  NetworkImage(moon,),
                  activeTrackColor: Colors.black,
                  inactiveTrackColor: Colors.grey[200],
                  inactiveThumbImage:  NetworkImage(sun),
                  activeColor: Colors.black,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.notifications_outlined,
                  color: !widget.isDark ? black : Colors.white,
                ),
              ),
              Expanded(
                  child: IconButton(
                icon: Icon(
                  Icons.search,
                  color: !widget.isDark ? black : Colors.white,
                ),
                onPressed: widget.showSearchBar,
              )),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
