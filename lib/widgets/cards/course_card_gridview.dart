import 'dart:math';

import 'package:cipher_schools/widgets/cards/course_card.dart';
import 'package:flutter/material.dart';

class CourseCardGridView extends StatelessWidget {
  final List<Map<String, String>> mp;
  final bool isDark;
  final int count;
  const CourseCardGridView(
      {Key? key, required this.mp, required this.isDark, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: min(size.height / 2, 300),
          childAspectRatio: 3 / 5,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: count == -1 ? mp.length : count,
      itemBuilder: (context, i) {
        return CourseCard(
          mp: mp[i],
          isDark: isDark,
        );
      },
    );
  }
}
