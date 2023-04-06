

import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';

import 'cards/card_feedback_item.dart';

class StudentsFeedback extends StatefulWidget {
  final List<String> feedbackHeadline;
  final List<Map<String, String>> studentFeedback;
  const StudentsFeedback(
      {Key? key, required this.feedbackHeadline, required this.studentFeedback})
      : super(key: key);

  @override
  State<StudentsFeedback> createState() => _StudentsFeedbackState();
}

class _StudentsFeedbackState extends State<StudentsFeedback> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: black,
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          widget.feedbackHeadline[0],
          style: textStyleOrange3,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.feedbackHeadline[1],
          style: textStyleWhite1,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          widget.feedbackHeadline[2],
          style: textStyleWhite2,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: size.height * 0.35,
          child: PageView.builder(
            controller: pageController,
            itemBuilder: (context, i) {
              return Container(
                width: size.width * 0.9,
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: CardFeedbackItem(
                  mp: studentFeedback[i],
                ),
              );
            },
            itemCount: widget.studentFeedback.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
          ),
        ),
        SizedBox(
          height: 50,
          child: Center(
            child: SliderWidget(
              count: widget.studentFeedback.length,
              selected: currentPage,
              cont: pageController,
            ),
          ),
        ),
      ]),
    );
  }
}

class SliderWidget extends StatelessWidget {
  final int count;
  final int selected;
  final PageController cont;
  const SliderWidget(
      {Key? key,
      required this.count,
      required this.selected,
      required this.cont})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, i) {
        return SizedBox(
          width: MediaQuery.of(context).size.width/(count+1),
          child: IconButton(
            onPressed: () {
              cont.animateToPage(i,
                  duration: const Duration(milliseconds: 600), curve: Curves.linear);
            },
            icon: Icon(
              Icons.remove,
              color: selected == i ? orange : Colors.white,
              //size: 20,
            ),
          ),
        );
      },
      itemCount: count,
    );
  }
}

