import 'package:cipher_schools/themes/home_theme.dart';
import 'package:cipher_schools/utils/test_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ExpertContinuousListView extends StatefulWidget {
  final List<Map<String, String>> mp;
  const ExpertContinuousListView({Key? key, required this.mp})
      : super(key: key);

  @override
  State<ExpertContinuousListView> createState() =>
      _ExpertContinuousListViewState();
}

class _ExpertContinuousListViewState extends State<ExpertContinuousListView> {
  final ScrollController controller = ScrollController();
  int currentIndex = 0;

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
      separatorBuilder: ((context, index) {
        return const SizedBox(
          width: 20,
        );
      }),
      scrollDirection: Axis.horizontal,
      controller: controller,
      itemCount: widget.mp.length,
      itemBuilder: (BuildContext context, int i) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.18,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        height: MediaQuery.of(context).size.height * 0.25,
                        widget.mp[i]['image'] ?? '',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            Text(
              widget.mp[i]['name'] ?? '',
              style: textStyleOrange2,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              widget.mp[i]['role'] ?? '',
              style: textStyleBlack3,
            ),
          ],
        );
      },
    );
  }
}
  // return Column(
        //   children: [
        // Stack(
        //   children: [
        //     Container(
        //       width: double.infinity,
        //     )
        //   ],
        // ),
        // Text(widget.mp[i]['name']??'',style: TextStyle(color: Colors.white),),
        // Text(widget.mp[i]['role']??''),
        // ],
        //);