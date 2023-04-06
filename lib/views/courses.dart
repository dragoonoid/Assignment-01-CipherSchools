import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:cipher_schools/widgets/animated%20widgets/carousel_courses.dart';
import 'package:cipher_schools/widgets/app_bar/app_bar_courses.dart';
import 'package:cipher_schools/widgets/app_bar/app_bar_search.dart';
import 'package:cipher_schools/widgets/cards/course_card.dart';
import 'package:cipher_schools/widgets/cards/course_card_gridview.dart';
import 'package:cipher_schools/widgets/navigation_bar/bottom_bar.dart';
import 'package:cipher_schools/widgets/navigation_bar/drawer.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({Key? key}) : super(key: key);

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  bool showDrawer = false;
  bool isDarkTheme = false;
  bool showSearchBar = false;
  String filterValue = '1';
  toggleDrawer() {
    setState(() {
      showDrawer = !showDrawer;
    });
  }

  toggleDark() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  toggleSearchBar() {
    setState(() {
      showSearchBar = !showSearchBar;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const padding = EdgeInsets.only(left: 10, right: 10);
    return Scaffold(
      backgroundColor: !isDarkTheme ? Colors.white : black,
      appBar: !showSearchBar
          ? AppBarCourses(
              showDrawer: toggleDrawer,
              changeDark: toggleDark,
              isDark: isDarkTheme,
              showSearchBar: toggleSearchBar,
            )
          : AppBarSearch(isDark: isDarkTheme, showSearchBar: toggleSearchBar),
      bottomNavigationBar: BottomBar(
        selected: 1,
        isDark: isDarkTheme,
      ),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: size.height * 0.35,
                child: CarouselCourses(mp: courseCarousel),
              ),
              Container(
                padding: padding,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended Courses',
                      style: !isDarkTheme
                          ? textStyleBlack2.copyWith(
                              fontWeight: FontWeight.w500)
                          : textStyleWhite2.copyWith(
                              fontWeight: FontWeight.w500),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: !isDarkTheme ? Colors.grey[200] : Colors.black54,
                          borderRadius: BorderRadius.circular(5)),
                          
                      child: DropdownButton(
                        underline: Container(),
                        dropdownColor: !isDarkTheme?Colors.white:Colors.black54,
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: !isDarkTheme ? Colors.black : Colors.white,
                        ),
                        items: [
                          DropdownMenuItem<String>(
                            value: '1',
                            child: Text(
                              'Popular',
                              style: !isDarkTheme
                                  ? textStyleBlack3
                                  : textStyleWhite3,
                            ),
                          ),
                          DropdownMenuItem<String>(
                            value: '2',
                            child: Text('Latest',
                                style: !isDarkTheme
                                    ? textStyleBlack3
                                    : textStyleWhite3),
                          ),
                        ],
                        onChanged: (x) {
                          setState(() {
                            filterValue = x.toString();
                          });
                        },
                        value: filterValue,
                      ),
                    ),
                  ],
                ),
              ),
              _CourseSlider(
                mp: courses,
                isDark: isDarkTheme,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: padding,
                child: Text(
                  'Latest Videos',
                  style: !isDarkTheme
                      ? textStyleBlack2.copyWith(fontWeight: FontWeight.w500)
                      : textStyleWhite2.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              _CourseSlider(
                mp: courses,
                isDark: isDarkTheme,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: padding,
                child: Text(
                  'Popular Categories',
                  style: !isDarkTheme
                      ? textStyleBlack2.copyWith(fontWeight: FontWeight.w500)
                      : textStyleWhite2.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              _CourseSlider(
                mp: courses,
                isDark: isDarkTheme,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: padding,
                child: Text(
                  'All Courses',
                  style: !isDarkTheme
                      ? textStyleBlack2.copyWith(fontWeight: FontWeight.w500)
                      : textStyleWhite2.copyWith(fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                padding: padding,
                margin: const EdgeInsets.only(top: 10),
                child: CourseCardGridView(
                  mp: courses,
                  isDark: isDarkTheme,
                ),
              ),
            ],
          ),
        ),
        (showDrawer
            ? DrawerMenu(
                size: size,
                s: browseList,
                isDark: isDarkTheme,
              )
            : Container()),
      ]),
    );
  }
}

class _CourseSlider extends StatefulWidget {
  final List<Map<String, String>> mp;
  final bool isDark;
  const _CourseSlider({Key? key, required this.mp, required this.isDark})
      : super(key: key);

  @override
  State<_CourseSlider> createState() => _CourseSliderState();
}

class _CourseSliderState extends State<_CourseSlider> {
  ScrollController cont = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(children: [
        SizedBox(
          height: size.height * 0.4,
          child: ListView.separated(
            controller: cont,
            scrollDirection: Axis.horizontal,
            separatorBuilder: ((context, index) {
              return const SizedBox(
                width: 20,
              );
            }),
            itemBuilder: (_, i) {
              return SizedBox(
                width: size.width * 0.45,
                child: CourseCard(
                  mp: widget.mp[i],
                  isDark: widget.isDark,
                ),
              );
            },
            itemCount: widget.mp.length,
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: size.height * 0.15,
          child: SizedBox(
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      cont.animateTo(cont.offset - 150,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 15,
                      child: Icon(Icons.chevron_left),
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      cont.animateTo(cont.offset + 150,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    child: CircleAvatar(
                      backgroundColor: orange,
                      radius: 15,
                      child: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
        ),
      ]),
    );
  }
}
