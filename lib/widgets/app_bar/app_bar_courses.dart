import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class AppBarCourses extends StatefulWidget implements PreferredSizeWidget {
  final VoidCallback showDrawer;
  const AppBarCourses({Key? key, required this.showDrawer}) : super(key: key);

  @override
  State<AppBarCourses> createState() => _AppBarCoursesState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarCoursesState extends State<AppBarCourses> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.white,
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
        child: AutoSizeText(
          'CipherSchools',
          style: textStyleBlack2.copyWith(fontSize: 19),
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
                  Icons.browse_gallery,
                  color: black,
                ),
              ),
              const Expanded(
                child: Center(
                  child: AutoSizeText(
                    'Browse',
                    minFontSize: 10,
                    style: textStyleBlack3,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: widget.showDrawer,
                  icon: const Icon(Icons.keyboard_arrow_down_outlined),
                  color: black,
                ),
              ),
              Expanded(
                child: Switch(
                    value: isDark,
                    onChanged: (i) {
                      setState(() {
                        isDark = i;
                      });
                    }),
              ),
              Expanded(
                child: Icon(
                  Icons.notifications_outlined,
                  color: black,
                ),
              ),
              Expanded(
                child: Icon(
                  Icons.search,
                  color: black,
                ),
              ),
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
