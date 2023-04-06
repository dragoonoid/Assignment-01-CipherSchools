import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback func;
  final bool showNavContainer;
  const AppBarHome(
      {Key? key, required this.func, required this.showNavContainer})
      : super(key: key);
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(7),
        child: Image.asset(
          'assets/app_icon.png',
        ),
      ),
      titleSpacing: 3,
      title:  Text(
        'CipherSchools',
        style: textStyleBlack2.copyWith(fontSize: 19),
      ),
      elevation: 2,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
              onTap: func,
              child: showNavContainer
                  ? const Icon(
                      Icons.close,
                      color: Colors.black,
                    )
                  : const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ) //Image.asset('assets/drawer.png'),
              ),
        ),
      ],
    );
  }
}
