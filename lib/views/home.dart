import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:cipher_schools/utils/url.dart';
import 'package:cipher_schools/widgets/animated%20widgets/creators_from_listview.dart';
import 'package:cipher_schools/widgets/app_bar/app_bar_home.dart';
import 'package:cipher_schools/widgets/cards/card_widget.dart';
import 'package:cipher_schools/widgets/animated%20widgets/carousel_home.dart';
import 'package:cipher_schools/widgets/categories_slider.dart';
import 'package:cipher_schools/widgets/animated%20widgets/expert_continuous_listview.dart';
import 'package:cipher_schools/widgets/cards/course_card_gridview.dart';
import 'package:cipher_schools/widgets/animated%20widgets/disapearing_text.dart';
import 'package:cipher_schools/widgets/grid_view_map.dart';
import 'package:cipher_schools/widgets/navigation_bar/bottom_bar.dart';
import 'package:cipher_schools/widgets/navigation_bar/drawer.dart';
import 'package:cipher_schools/widgets/navigation_bar/floating_action_up_button.dart';
import 'package:cipher_schools/widgets/static%20widgets/home_contact.dart';
import 'package:cipher_schools/widgets/helper%20widgets/mentor_stack_icon.dart';
import 'package:cipher_schools/widgets/helper%20widgets/stars.dart';
import 'package:cipher_schools/widgets/students_feedback.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController cont = ScrollController();
  double offset = 0;
  bool showNavContainer = false;
  @override
  void initState() {
    super.initState();
    cont.addListener(() {
      setState(() {
        offset = cont.offset;
      });
    });
  }

  @override
  void dispose() {
    cont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: offset > 20
          ? FloatingActionUpButton(
              func: () {
                setState(() {
                  cont.animateTo(0,
                      duration: const Duration(seconds: 1),
                      curve: Curves.linear);
                });
              },
            )
          : null,
      appBar: AppBarHome(
        func: () {
                  setState(() {
                    showNavContainer = !showNavContainer;
                  });
                },showNavContainer: showNavContainer,
      ),
      bottomNavigationBar: const BottomBar(selected: 0,),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: cont,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  RichText(
                    maxLines: 1,
                    text: TextSpan(
                      text: "Welcome to ",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'the',
                          style: TextStyle(
                            color: orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    maxLines: 1,
                    text: TextSpan(
                      text: "Future",
                      style: TextStyle(
                          color: orange,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                      children: const <TextSpan>[
                        TextSpan(
                          text: ' of Learning!',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text('Start Learning by best creators for'),
                  const Center(
                    child: DisapearingText(
                      s: 'absolutely Free',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        // people icon
                        height: size.height * 0.08,
                        width: size.width * 0.2,
                        child: MentorStackIcon(
                          n: 1,
                          s: [appIcon],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        // 50 + mentors
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('50+'),
                          Text('Mentors'),
                        ],
                      ),
                      SizedBox(
                        // spacer
                        width: 50,
                        height: size.height * 0.05,
                        child: const VerticalDivider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        //rating
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('4.8/5'),
                          Stars(
                            st: 4.6,
                            len: 6,
                          ),
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 0),
                      height: size.height * 0.08,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange),
                      child: const Center(
                        child: Text(
                          'Start Learning Now →',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.25,
                    width: double.infinity,
                    child: CarouselHome(
                      mp: titles,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: GridViewMap(mp: detailsOfStudents),
                  ),
                  CardWidget(s: cardWidgetData[0], icon: Icons.school_outlined),
                  CardWidget(
                      s: cardWidgetData[1], icon: Icons.contact_page_outlined),
                  StudentsFeedback(
                      feedbackHeadline: feedbackHead,
                      studentFeedback: studentFeedback),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: double.infinity,
                    child: const Text(
                      'Creators from',
                      style: textStyleBlack1,
                    ),
                  ),// TODO creators from use list tile
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    height: size.height * 0.1,
                    child: Center(child: CreatorsFromListView(list: creatorsFrom)),
                  ),
                  const Text(
                    'Bests are here',
                    style: textStyleBlack1,
                  ),
                  CategoriesSlider(s: sections),
                  const SizedBox(height: 30),
                  CourseCardGridView(mp: courses),
                  const SizedBox(height: 30),
                  const Center(
                    child: Text(
                      'Our Expert Mentors',
                      style: textStyleBlack1,
                    ),
                  ),
                  Container(
                    height: size.height * 0.35,
                    margin: const EdgeInsets.only(top: 10),
                    child: ExpertContinuousListView(
                      mp: mentors,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeContact(),
                ],
              ),
            ),
          ),
          (showNavContainer ? DrawerMenu(size: size,s:drawerList) : Container()),
        ],
      ),
    );
  }
}
