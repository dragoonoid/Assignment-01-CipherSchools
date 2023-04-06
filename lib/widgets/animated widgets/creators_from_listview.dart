import 'package:cipher_schools/themes/home_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CreatorsFromListView extends StatefulWidget {
  final List<String> list;
  const CreatorsFromListView({Key? key, required this.list}) : super(key: key);

  @override
  State<CreatorsFromListView> createState() => _CreatorsFromListViewState();
}

class _CreatorsFromListViewState extends State<CreatorsFromListView> {
  final ScrollController controller = ScrollController();
  int currentIndex = 0;
// TODO does not run upon app opening
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        double maxLimitOfScroll = controller.position.maxScrollExtent;
        double minLimitOfScroll = controller.position.minScrollExtent;
        animateForwardAndBack(
          maxLimitOfScroll,
          minLimitOfScroll,
          maxLimitOfScroll,
          10,
          controller,
        );
      });
    });
    // SchedulerBinding.instance.addPostFrameCallback((_) {
    //   double maxLimitOfScroll = controller.position.maxScrollExtent;
    //   double minLimitOfScroll = controller.position.minScrollExtent;
    //   animateForwardAndBack(
    //     maxLimitOfScroll,
    //     minLimitOfScroll,
    //     maxLimitOfScroll,
    //     10,
    //     controller,
    //   );
    // });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  animateForwardAndBack(
      double max, double min, double position, int sec, ScrollController cont) {
    if (!mounted) {
      return;
    }
    cont
        .animateTo(position,
            duration: Duration(seconds: sec), curve: Curves.linear)
        .then((value) {
      position = position == max ? min : max;
      animateForwardAndBack(max, min, position, sec, cont);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemBuilder: (_, i) {
          return Text(
            widget.list[i],
            style: textStyleBlack1.copyWith(
                color: Colors.grey, fontStyle: FontStyle.italic),
          );
        },
        separatorBuilder: (_, i) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: widget.list.length);
  }
}
