import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget implements PreferredSizeWidget {
  final bool isDark;
  final VoidCallback showSearchBar;
  const AppBarSearch(
      {Key? key, required this.isDark, required this.showSearchBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: !isDark ? Colors.white : black,
      actions: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: !isDark ? Colors.grey[200] : Colors.black54,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.search,
                  color: !isDark ? black : Colors.white,
                ),
                Text(
                  'Search and Learn',
                  style: !isDark
                      ? textStyleBlack3.copyWith(color: Colors.black54)
                      : textStyleWhite3.copyWith(color: Colors.white54),
                ),
                const Spacer(),
                Icon(
                  Icons.settings,
                  color: !isDark ? black : Colors.white,
                )
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: showSearchBar,
          icon: Icon(
            Icons.close_outlined,
            color: !isDark ? black : Colors.white,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
